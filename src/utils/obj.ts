import { aliasTable } from '../actions/aliasTable'
import { multiDefinedTable } from '../actions/multiDefined'
import { noBracketsFuncs } from '../actions/noBracketsFuncs'
import { type AnyObj } from '../types'

interface actionTostringProps {
  // TODO: complete the type
  o: any
  parentKey: string
  defaultReturnType: string
  gameData: { unitTypes?: AnyObj, scripts?: AnyObj }
  nestedConditions?: boolean
}

const inValidKey = [
  'function',
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
  Object.keys(obj).forEach(key => {
    if (!key.startsWith('_')) {
      newObj[key] = typeof obj[key] === 'object' ? removeUnusedProperties(obj[key]) : obj[key]
    }
  })
  return newObj
}

const excludeFuncs = {
  concat: ({ o: obj, defaultReturnType, gameData, parentKey }: actionTostringProps) => `${actionToString({ o: obj.textA, defaultReturnType, gameData, parentKey })} + ${actionToString({ o: obj.textB, parentKey, defaultReturnType, gameData })}`,
  getValueOfEntityVariable: ({ o: obj, defaultReturnType, gameData, parentKey }: actionTostringProps) => `${typeof obj.entity === 'object' ? actionToString({ o: obj.entity, parentKey, defaultReturnType, gameData }) : obj.entity}.${obj.variable.variable.key}`,
  getValueOfPlayerVariable: ({ o: obj, defaultReturnType, gameData, parentKey }: actionTostringProps) => `${typeof obj.player === 'object' ? actionToString({ o: obj.player, parentKey, defaultReturnType, gameData }) : obj.player}.${obj.variable.variable.key}`,
  getEntityVariable: ({ o: obj }: actionTostringProps) => obj.variable.text,
  getPlayerVariable: ({ o: obj }: actionTostringProps) => obj.variable.text,
  getEntityAttribute: ({ o: obj, defaultReturnType, gameData, parentKey }: actionTostringProps) => `${typeof obj.entity === 'object' ? actionToString({ o: obj.entity, parentKey, defaultReturnType, gameData }) : obj.entity}.$${obj.attribute}`
}

const addBracketsWhenNeeded = (obj: AnyObj, output: string): string => obj.brackets === true ? `(${output})` : output

export const actionToString = ({ o, parentKey, defaultReturnType, gameData }: actionTostringProps): string => {
  let output = ''
  if (o === null || o === undefined) {
    return output
  }
  switch (typeof o) {
    case 'string': {
      switch (defaultReturnType) {
        case 'unitType': {
          return `${(Object.values(gameData.unitTypes ?? {}).find(v => v.id === o)?.name) ?? o}`
        }
        case 'script': {
          return `${(Object.values(gameData.scripts ?? {}).find(v => v.key === o)?.name) ?? o}`
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
  if (obj.function !== undefined) {
    let needBrackets = true

    if (noBracketsFuncs.includes(obj.function)) {
      needBrackets = false
    }
    const convertFunc = excludeFuncs[obj.function as keyof typeof excludeFuncs]
    if (convertFunc !== undefined) {
      output += convertFunc({ o: obj, parentKey, defaultReturnType, gameData })
    } else {
      if (multiDefinedTable[aliasTable[obj.function as keyof typeof aliasTable] ?? obj.function] !== undefined) {
        for (let i = 0; i < keys.length; i++) {
          if (checkIsValid(keys[i])) {
            output += typeof obj[keys[i]] === 'object'
              ? actionToString({ o: obj[keys[i]], parentKey: keys[i], defaultReturnType, gameData })
              : typeof obj[keys[i]] === 'string' ? `'${obj[keys[i]]}'` : obj[keys[i]]
          }
          if (keys[i] !== 'function' || i === keys.length - 1) {
            output += keys.length - 1 === i ? '' : ', '
          }
        }
        output += `.${aliasTable[obj.function as keyof typeof aliasTable] ?? obj.function}`
      } else {
        output += `${aliasTable[obj.function as keyof typeof aliasTable] ?? obj.function}${needBrackets ? '(' : ''}`
        for (let i = 0; i < keys.length; i++) {
          if (checkIsValid(keys[i])) {
            output += typeof obj[keys[i]] === 'object'
              ? actionToString({ o: obj[keys[i]], parentKey: keys[i], defaultReturnType, gameData })
              : typeof obj[keys[i]] === 'string' ? `'${obj[keys[i]]}'` : obj[keys[i]]
          }
          if (keys[i] !== 'function' || i === keys.length - 1) {
            output += keys.length - 1 === i ? needBrackets ? ')' : '' : ', '
          }
        }
      }
    }
    return addBracketsWhenNeeded(obj, output)
  }
  return addBracketsWhenNeeded(obj, output)
}
