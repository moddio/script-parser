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
  disabled?: boolean
  noNeedQuotes?: boolean
}

const DEFAULTINDENTATION = 2
interface conditionObject {
  type: 'condition'
  conditions: Array<Record<string, any>>
  then: Array<Record<string, any>>
  else: Array<Record<string, any>>
  comment: string
}

interface repeatObject {
  type: 'repeat'
  count: number
  actions: Array<Record<string, any>>
}

const inValidKey = [
  'function',
  'type',
  'items',
  'vars',
  'disabled',
  'isEntityScript',
  'comment'
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

const commonAttrSetter = (postFix: 'max' | 'min' | '' = '') => ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
  const obj: Record<string, any> = o as Record<string, any>
  return `${actionToString({ o: obj.entity, defaultReturnType, gameData, parentKey })}.$${actionToString({ o: obj.attribute, defaultReturnType, gameData, parentKey, noNeedQuotes: true })}${postFix !== '' ? `.${postFix}` : ''} = ${actionToString({ o: obj.value, parentKey, defaultReturnType, gameData })}`
}
const excludeFuncs = {
  setPlayerAttribute: commonAttrSetter(),
  setPlayerAttributeMax: commonAttrSetter('max'),
  setPlayerAttributeMin: commonAttrSetter('min'),
  setEntityAttribute: commonAttrSetter(),
  setEntityAttributeMax: commonAttrSetter('max'),
  setEntityAttributeMin: commonAttrSetter('min'),
  setTimeOut: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    const obj = o as Record<string, any>
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `setTimeOut(${actionToString({ o: obj.duration, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  repeatWithDelay: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    const obj = o as Record<string, any>
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `repeatWithDelay(${actionToString({ o: obj.count, defaultReturnType, gameData, parentKey, indentation: 0 })}, ${actionToString({ o: obj.delay, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  getVariable: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `#${actionToString({ o: obj.variableName, defaultReturnType, gameData, parentKey, noNeedQuotes: true })}`
  },
  getMax: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `Math.max(${actionToString({ o: obj.num1, defaultReturnType, gameData, parentKey })}, ${actionToString({ o: obj.num2, parentKey, defaultReturnType, gameData })})`
  },
  getMin: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `Math.min(${actionToString({ o: obj.num1, defaultReturnType, gameData, parentKey })}, ${actionToString({ o: obj.num2, parentKey, defaultReturnType, gameData })})`
  },
  setVariable: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `#${actionToString({ o: obj.variableName, defaultReturnType, gameData, parentKey, noNeedQuotes: true })} = ${actionToString({ o: obj.value, parentKey, defaultReturnType, gameData })}`
  },
  setEntityVariable: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${actionToString({ o: obj.entity, defaultReturnType, gameData, parentKey })}.${actionToString({ o: obj.variable, parentKey, defaultReturnType, gameData })} = ${actionToString({ o: obj.value, parentKey, defaultReturnType, gameData })}`
  },
  concat: ({ o, defaultReturnType, gameData, parentKey }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${actionToString({ o: obj.textA, defaultReturnType, gameData, parentKey })} + ${actionToString({ o: obj.textB, parentKey, defaultReturnType, gameData })}`
  },
  getValueOfEntityVariable: ({ o, defaultReturnType, gameData, parentKey, indentation }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${typeof obj.entity === 'object' ? actionToString({ o: obj.entity, parentKey, defaultReturnType, gameData }) : obj.entity}.${obj.variable?.variable?.key}`
  },
  getValueOfPlayerVariable: ({ o, defaultReturnType, gameData, parentKey, indentation }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${typeof obj.player === 'object' ? actionToString({ o: obj.player, parentKey, defaultReturnType, gameData }) : obj.player}.${obj.variable?.variable?.key}`
  },
  getEntityVariable: ({ o: obj }: actionTostringProps) => `#${(obj as Record<string, any>).variable?.text}`,
  getPlayerVariable: ({ o: obj }: actionTostringProps) => `#${(obj as Record<string, any>).variable?.text}`,
  getEntityAttribute: ({ o, defaultReturnType, gameData, parentKey, indentation }: actionTostringProps) => {
    const obj: Record<string, any> = o as Record<string, any>
    return `${typeof obj.entity === 'object' ? actionToString({ o: obj.entity, parentKey, defaultReturnType, gameData }) : obj.entity}.$${obj.attribute}`
  },
  impulse: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    const obj = o as { x: Record<string, any> | number, y: Record<string, any> | number }
    return `pos(${actionToString({ o: obj.x, defaultReturnType, gameData, parentKey, disabled })}, ${actionToString({ o: obj.y, defaultReturnType, gameData, parentKey, disabled })})`
  },
  repeat: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    const obj = o as repeatObject
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `repeat (${actionToString({ o: obj.count, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllItems: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllItems (${actionToString({ o: obj.itemGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  while: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `while (${actionToString({ o: obj.conditions, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllEntities: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllEntities (${actionToString({ o: obj.entityGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllItemTypes: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllItemTypes (${actionToString({ o: obj.itemTypeGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllProjectiles: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllProjectiles (${actionToString({ o: obj.projectileGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllRegions: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllRegions (${actionToString({ o: obj.regionGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllUnitTypes: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllUnitTypes (${actionToString({ o: obj.unitTypeGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllPlayers: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllPlayers (${actionToString({ o: obj.playerGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  for: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `for (${actionToString({ o: obj.variableName, defaultReturnType, gameData, parentKey, indentation: 0 })}, ${actionToString({ o: obj.start, defaultReturnType, gameData, parentKey, indentation: 0 })}, ${actionToString({ o: obj.stop, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllDebris: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllDebris (${actionToString({ o: obj.debrisGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forAllUnits: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forAllUnits (${actionToString({ o: obj.unitGroup, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  forIn: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    // TODO: complete the type
    const obj = o as any
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `forIn (${actionToString({ o: obj.variableNameMain, defaultReturnType, gameData, parentKey, indentation: 0 })}, ${actionToString({ o: obj.variableNameSource, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.actions, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
  },
  condition: ({ o, defaultReturnType, gameData, parentKey, indentation = 0, disabled }: actionTostringProps) => {
    const obj = o as conditionObject
    const nowIndentation = DEFAULTINDENTATION + indentation
    return `if (${actionToString({ o: obj.conditions, defaultReturnType, gameData, parentKey, indentation: 0 })}) {
${actionToString({ o: obj.then, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}${obj.else?.length > 0
        ? ` else {
${actionToString({ o: obj.else, defaultReturnType, gameData, parentKey, indentation: nowIndentation, disabled })}
${disabled === true ? '-- ' : ''}${' '.repeat(indentation)}}`
        : ''}`
  }
}

const addBracketsWhenNeeded = (obj: AnyObj, output: string): string => obj.brackets === true ? `(${output})` : output

export const actionToString = ({ o, parentKey, defaultReturnType, gameData, indentation = 0, disabled, noNeedQuotes = false }: actionTostringProps): string => {
  let output = ''
  if (o === null || o === undefined) {
    return output
  }
  const isDisabled = (o as Record<string, any>).disabled === true || (disabled ?? false)
  if ((o as Record<string, any>).comment !== undefined) {
    (o as Record<string, any>).comment.split('\n').forEach((comment: string) => {
      if (comment !== '') {
        output += `${indentation !== undefined ? ' '.repeat(indentation) : ''}// ${comment}\n`
      }
    })
  }
  if (isDisabled) {
    output += '-- '
  }
  output += ' '.repeat(indentation)

  if (Array.isArray(o) && o.every(o => typeof o === 'object' && !Array.isArray(o)) && o[0]?.operator === undefined) {
    return o.map(obj => {
      return actionToString({ o: obj, parentKey, defaultReturnType, gameData, indentation, disabled: isDisabled })
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
          const returnString = o.replaceAll("'", "\\'")
          return noNeedQuotes ? `${returnString}` : `'${returnString}'`
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
    output += actionToString({ o: obj.actions, defaultReturnType, gameData, indentation, parentKey, disabled: isDisabled })
  }
  // for comparison ,1 == 2
  if (obj[0] !== undefined && obj[0].operandType !== undefined) {
    let operator: string = obj[0].operator
    let left = typeof obj[1] === 'object' ? actionToString({ o: obj[1], parentKey: operator, defaultReturnType, gameData }) : obj[1]
    let right = typeof obj[2] === 'object' ? actionToString({ o: obj[2], parentKey: operator, defaultReturnType, gameData }) : obj[2]
    // map AND, OR to '&&', '||'
    left = typeof obj[1] === 'string' ? `'${left.replaceAll("'", "\\'")}'` : left
    right = typeof obj[2] === 'string' ? `'${right.replaceAll("'", "\\'")}'` : right
    operator = operatorMap[operator as keyof typeof operatorMap] ?? operator
    output += `${left} ${operator} ${right}`
    return addBracketsWhenNeeded(obj, output)
  }

  // for calc, e.g 1 + 1, 1 ^ 2
  if (obj.items !== undefined) {
    const operator = obj.items[0].operator ?? obj.items[0]
    let left = typeof obj.items[1] === 'object' ? actionToString({ o: obj.items[1], parentKey: operator, defaultReturnType, gameData }) : obj.items[1]
    let right = typeof obj.items[2] === 'object' ? actionToString({ o: obj.items[2], parentKey: operator, defaultReturnType, gameData }) : obj.items[2]
    left = typeof obj[1] === 'string' ? `'${left.replaceAll("'", "\\'")}'` : left
    right = typeof obj[2] === 'string' ? `'${right.replaceAll("'", "\\'")}'` : right
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
      output += convertFunc({ o: obj, parentKey, defaultReturnType, gameData, indentation, disabled: isDisabled })
    } else {
      if (multiDefinedTable[aliasTable[fn as keyof typeof aliasTable] ?? fn] !== undefined) {
        for (let i = 0; i < keys.length; i++) {
          if (checkIsValid(keys[i])) {
            if (needSemicolons) {
              output += ', '
              needSemicolons = false
            }
            output += typeof obj[keys[i]] === 'object'
              ? excludeFuncs[keys[i] as keyof typeof excludeFuncs] !== undefined
                ? excludeFuncs[keys[i] as keyof typeof excludeFuncs]({ o: obj[keys[i]], parentKey, defaultReturnType, gameData, indentation, disabled: isDisabled })
                : actionToString({ o: obj[keys[i]], parentKey: keys[i], defaultReturnType, gameData })
              : typeof obj[keys[i]] === 'string' ? `'${obj[keys[i]].replaceAll("'", "\\'")}'` : obj[keys[i]]
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
              ? excludeFuncs[keys[i] as keyof typeof excludeFuncs] !== undefined
                ? excludeFuncs[keys[i] as keyof typeof excludeFuncs]({ o: obj[keys[i]], parentKey, defaultReturnType, gameData, indentation, disabled: isDisabled })
                : actionToString({ o: obj[keys[i]], parentKey: keys[i], defaultReturnType, gameData })
              : typeof obj[keys[i]] === 'string' ? `'${obj[keys[i]].replaceAll("'", "\\'")}'` : obj[keys[i]]
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
