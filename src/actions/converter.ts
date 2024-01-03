import jsonFile from 'jsonfile'
import axios from 'axios'
import { aliasTable } from './aliasTable'
import { multiDefinedTable } from './multiDefined'
import { type AnyObj } from '../types'

// eslint-disable-next-line @typescript-eslint/strict-boolean-expressions
const getType = (frag: AnyObj): string => frag?.extraData?.type || frag?.extraData?.dataType || frag?.extraData?.dataTypes || frag?.dataType
const getVars = (value: any, actionObj: any): string => {
  const types: string[] = []
  value.data?.fragments.forEach((frag: { type: string, field: string | undefined }, index: any) => {
    if (frag.type === 'variable' && (frag.field !== undefined)) {
      actionObj[frag.field] = String.fromCharCode(types.length + 97)
      types.push(getType(frag))
    }
  })
  let str = ''
  for (let i = 0; i < types.length; i++) {
    str += `${String.fromCharCode(i + 97)}:${types[i]}#`
  }
  return str
}

const postProcess = (actionObjs: AnyObj): void => {
  actionObjs.concat = "a:string,number#b:string,number#{return {\"function\":\"concat\",_returnType:'string',textA:a,textB:b}}"
  actionObjs.getVariable = "a:string#{return {\"function\":\"getVariable\",_returnType:'Multiple',variableName:a}}"
}

axios.get('https://www.modd.io/api/editor-api/?game=two-houses')
  .then((res) => {
    const actionsObj: any = {}
    const actionsMapTemplate: any = {}
    const keywordsArr: string[] = []
    const obj = res.data.message
    Object.values(obj).forEach((v: any, idx) => {
      const value = v
      let key: string = value.key
      if (aliasTable[value.key as keyof typeof aliasTable] !== undefined) {
        key = aliasTable[value.key as keyof typeof aliasTable]
      }
      const actionObj: any = {
        function: value.key,
        _returnType: `'${value.data.category}'`
      }
      let str = getVars(value, actionObj)
      str += `{return ${JSON.stringify(actionObj)}}`
      let count = 0
      if (multiDefinedTable[key] === undefined) {
        actionsObj[key] = str.replace(/"/g, function (match) {
          count++
          return (count > 4) ? '' : match
        })
      }
      actionsMapTemplate[key] = key

      keywordsArr.push(key)
    })
    Object.entries(multiDefinedTable).forEach(([key, value]) => {
      const values = Object.entries(value)
      let str = `${getVars(obj.find((o: any) => o.key === values[0][1]), {})}{return `
      values.forEach(([k, v], idx) => {
        const actionObj: any = {
          function: v
        }

        try {
          getVars(obj.find((o: any) => o.key === v), actionObj)
        } catch (e) {
          console.log(k, obj.key, e)
        }
        let count = 0
        str += `a._returnType === '${k}' || a._returnType === 'entity'? ${JSON.stringify(actionObj)} : ${idx === values.length - 1 ? "{'error': a}}" : ''}`.replace(/"/g, function (match) {
          count++
          return (count > 4) ? '' : match
        })
      })
      actionsObj[key] = str
    })
    postProcess(actionsObj)
    jsonFile.writeFileSync('./src/actions/keywords.json', keywordsArr)
    jsonFile.writeFileSync('./src/actions/keywordsMapTemplate.json', actionsMapTemplate)
    jsonFile.writeFileSync('./src/actions/converted_actions.json', actionsObj)
  }).catch((e) => {
    console.log(e)
  })
