import jsonFile from 'jsonfile'
import axios from 'axios'
import { aliasTable } from './aliasTable'

const checkMultiDefined = (val: string) => {

  Object.keys(aliasTable).forEach((key) => {

  })
  return
}

axios.get('https://www.modd.io/api/editor-api/?game=two-houses')
  .then((res) => {
    const actionsObj: any = {}
    const actionsMapTemplate: any = {}
    const keywordsArr: string[] = []
    const obj = res.data.message
    Object.values(obj).map((v: any, idx) => {
      const value = v
      let key = value.key
      if (aliasTable[value.key as keyof typeof aliasTable] !== undefined) {
        key = aliasTable[value.key as keyof typeof aliasTable]
      }
      const actionObj: any = {
        function: value.key
      }
      let length = 0
      value.data?.fragments.map((frag: { type: string, field: string | undefined }, index: any) => {
        if (frag.type === 'variable' && (frag.field !== undefined)) {
          actionObj[frag.field] = String.fromCharCode(length + 97)
          length += 1
        }
      })
      let str = ''
      for (let i = 0; i < length; i++) {
        str += String.fromCharCode(i + 97) + '#'
      }
      str += `{return ${JSON.stringify(actionObj)}}`
      let count = 0
      actionsObj[key] = str.replace(/"/g, function (match) {
        count++
        return (count > 4) ? '' : match
      })
      actionsMapTemplate[key] = key

      keywordsArr.push(key)
    })
    jsonFile.writeFileSync('./src/actions/keywords.json', keywordsArr)
    jsonFile.writeFileSync('./src/actions/keywordsMapTemplate.json', actionsMapTemplate)
    jsonFile.writeFileSync('./src/actions/converted_actions.json', actionsObj)
  }).catch((e) => {
    console.log(e)
  })
