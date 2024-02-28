import { aliasTable } from '../actions/aliasTable'
import { multiDefinedTable } from '../actions/multiDefined'
import { noBracketsFuncs } from '../actions/noBracketsFuncs'
import { type AnyObj } from '../types'

interface actionTostringProps {
  // TODO: complete the type
  o: Record<string, any> | Array<Record<string, any>> | number | boolean | string
  parentKey: string
  defaultReturnType: string
  gameData: { unitTypes?: AnyObj, scripts?: AnyObj }
  indentation?: number
  nestedConditions?: boolean
}

interface conditionObject {
  type: 'condition'
  conditions: Array<Record<string, any>>
  then: Array<Record<string, any>>
  else: Array<Record<string, any>>
  comment: string
}

const inValidKey = [
  'function',
  'type',
  'items',
  'vars'
]

export const checkIsValid = (key: string): boolean => {
  if (inValidKey.includes(key)) {
    return false
  }
  return true
}

export const removeUnusedProperties = (obj: AnyObj): AnyObj => {
  const newObj: AnyObj = {}
  if (obj === undefined || obj === null || Array.isArray(obj)) {
    return obj
  }
  Object.keys(obj).forEach(key => {
    if (!key.startsWith('_')) {
      newObj[key] = typeof obj[key] === 'object' ? removeUnusedProperties(obj[key]) : obj[key]
    }
  })
  return newObj
}

const excludeFuncs = {
  concat: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${actionToString({ o: obj.textA, defaultReturnType, gameData, parentKey })} + ${actionToString({ o: obj.textB, parentKey, defaultReturnType, gameData })}`
  },
  getValueOfEntityVariable: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${typeof obj.entity === 'object' ? actionToString({ o: obj.entity, parentKey, defaultReturnType, gameData }) : obj.entity}.${obj.variable?.variable?.key}`
  },
  getValueOfPlayerVariable: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${typeof obj.player === 'object' ? actionToString({ o: obj.player, parentKey, defaultReturnType, gameData }) : obj.player}.${obj.variable?.variable?.key}`
  },
  getEntityVariable: ({ o: obj }: actionTostringProps) => (obj as Record<string, any>).variable?.text,
  getPlayerVariable: ({ o: obj }: actionTostringProps) => (obj as Record<string, any>).variable?.text,
  getEntityAttribute: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${typeof obj.entity === 'object' ? actionToString({ o: obj.entity, parentKey, defaultReturnType, gameData }) : obj.entity}.$${obj.attribute}`
  },
  condition: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj = o as conditionObject
    return `if  (${actionToString({ o: obj.conditions, defaultReturnType, gameData, parentKey })})  {
${actionToString({ o: obj.then, defaultReturnType, gameData, parentKey, indentation: 2 })}
} else {
${actionToString({ o: obj.else, defaultReturnType, gameData, parentKey, indentation: 2 })}
}
`
  }
}

const addBracketsWhenNeeded = (obj: AnyObj, output: string): string => obj.brackets === true ? `(${output})` : output

export const actionToString = ({ o, parentKey, defaultReturnType, gameData, indentation }: actionTostringProps): string => {
  let output = ''
  if ((o as Record<string, any>).comment !== undefined) {
    (o as Record<string, any>).comment.split('\n').forEach((comment: string) => {
      output += `${indentation !== undefined ? ' '.repeat(indentation) : ''}// ${comment}\n`
    })
  }
  if (indentation !== undefined) {
    output += ' '.repeat(indentation)
  }

  if (o === null || o === undefined) {
    return output
  }
  if (Array.isArray(o) && o.every(o => typeof o === 'object' && !Array.isArray(o))) {
    return o.map(obj => {
      return actionToString({ o: obj, parentKey, defaultReturnType, gameData, indentation })
    }).join('\n')
  }

  switch (typeof o) {
    case 'string': {
      switch (defaultReturnType) {
        case 'unitType': {
          return `${(Object.values(gameData.unitTypes ?? {}).find(v => v.id === o)?.name) ?? o}`
        }
        case 'script': {
          let returnVal = o
          returnVal = Object.values(gameData.scripts ?? {}).find(v => v.key === o)?.name ?? returnVal
          Object.values(gameData.unitTypes ?? {}).forEach(v => {
            Object.values(v.scripts).forEach((script: any) => {
              if (script.key === o) {
                returnVal = script.name
              }
            })
          })
          return returnVal
        }
        default: {
          return `"${o}"`
        }
      }
    }
    case 'number': {
      return String(o)
    }
    case 'object': {
      break
    }
    case 'boolean': {
      return String(o)
    }
    default: {
      return output
    }
  }
  const obj = removeUnusedProperties(o)
  const keys = Object.keys(obj)

  const operatorMap = {
    AND: '&&',
    OR: '||'
  }

  // for raw data json
  if (obj.triggers !== undefined) {
    obj.triggers.forEach((t: { type: string }) => { output += `@${t.type}\n` })
    output += actionToString({ o: obj.actions, defaultReturnType, gameData, indentation, parentKey })
  }
  // for comparison ,1 == 2
  if (obj[0] !== undefined && obj[0].operandType !== undefined) {
    let operator: string = obj[0].operator
    let left = typeof obj[1] === 'object' ? actionToString({ o: obj[1], parentKey: operator, defaultReturnType, gameData }) : obj[1]
    let right = typeof obj[2] === 'object' ? actionToString({ o: obj[2], parentKey: operator, defaultReturnType, gameData }) : obj[2]
    // map AND, OR to '&&', '||'
    left = typeof obj[1] === 'string' ? `'${left}'` : left
    right = typeof obj[2] === 'string' ? `'${right}'` : right
    operator = operatorMap[operator as keyof typeof operatorMap] ?? operator
    output += `${left} ${operator} ${right}`
    return addBracketsWhenNeeded(obj, output)
  }

  // for calc, e.g 1 + 1, 1 ^ 2
  if (obj.items !== undefined) {
    const operator = obj.items[0].operator ?? obj.items[0]
    const left = typeof obj.items[1] === 'object' ? actionToString({ o: obj.items[1], parentKey: operator, defaultReturnType, gameData }) : obj.items[1]
    const right = typeof obj.items[2] === 'object' ? actionToString({ o: obj.items[2], parentKey: operator, defaultReturnType, gameData }) : obj.items[2]
    if ((obj.items[0].operator === '*' || obj.items[0] === '*') && right === -1) {
      output += `- ${left} `
    } else {
      const needBrackets = ['+', '-'].includes(operator) ? !!['*', '/'].includes(parentKey) : false
      output += `${needBrackets ? '(' : ''}${left} ${operator} ${right}${needBrackets ? ')' : ''} `
    }
    return addBracketsWhenNeeded(obj, output)
  }

  // for normal action like pos(2, 2)
  if (obj.function !== undefined || obj.type !== undefined) {
    let needBrackets = true
    let needSemicolons = false
    const fn: string = obj.function ?? obj.type

    if (noBracketsFuncs.includes(fn)) {
      needBrackets = false
    }
    const convertFunc = excludeFuncs[fn as keyof typeof excludeFuncs]
    if (convertFunc !== undefined) {
      output += convertFunc({ o: obj, parentKey, defaultReturnType, gameData })
    } else {
      if (multiDefinedTable[aliasTable[fn as keyof typeof aliasTable] ?? fn] !== undefined) {
        for (let i = 0; i < keys.length; i++) {
          if (checkIsValid(keys[i])) {
            if (needSemicolons) {
              output += ', '
              needSemicolons = false
            }
            output += typeof obj[keys[i]] === 'object'
              ? actionToString({ o: obj[keys[i]], parentKey: keys[i], defaultReturnType, gameData })
              : typeof obj[keys[i]] === 'string' ? `'${obj[keys[i]]}'` : obj[keys[i]]
            needSemicolons = true
          }
        }
        output += `.${aliasTable[fn as keyof typeof aliasTable] ?? fn}`
      } else {
        output += `${aliasTable[fn as keyof typeof aliasTable] ?? fn}${needBrackets ? '(' : ''}`
        for (let i = 0; i < keys.length; i++) {
          if (checkIsValid(keys[i])) {
            if (needSemicolons) {
              output += ', '
              needSemicolons = false
            }
            output += typeof obj[keys[i]] === 'object'
              ? actionToString({ o: obj[keys[i]], parentKey: keys[i], defaultReturnType, gameData })
              : typeof obj[keys[i]] === 'string' ? `'${obj[keys[i]]}'` : obj[keys[i]]
            needSemicolons = true
          }
          if (needBrackets && i === keys.length - 1) {
            output += ')'
          }
        }
      }
    }
    return addBracketsWhenNeeded(obj, output)
  }
  return addBracketsWhenNeeded(obj, output)
}
