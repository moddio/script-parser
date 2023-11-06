import jsonFile from 'jsonfile'

jsonFile.readFile('./src/actions/actions.json', (err, obj) => {
  if (err !== null) {
    console.error(err)
  }
  const actionsObj: any = {}
  const keywordsArr: string[] = []
  Object.values(obj).map((v, idx) => {
    const value = v as any
    const actionObj: any = {
      function: value.key
    }
    let length = 0
    value.data.fragments.map((frag: { type: string, field: string | undefined }, index: any) => {
      if (frag.type === 'variable' && (frag.field !== undefined)) {
        actionObj[frag.field] = String.fromCharCode(length + 97)
        length += 1
      }
    })
    let str = ''
    for (let i = 0; i <= length; i++) {
      str += String.fromCharCode(i + 97) + '#'
    }
    str += `{return ${JSON.stringify(actionObj)}}`
    let count = 0
    actionsObj[value.key] = str.replace(/"/g, function (match) {
      count++
      return (count > 4) ? '' : match
    })
    keywordsArr.push(value.key)
  })
  jsonFile.writeFileSync('./src/actions/keywords.json', keywordsArr)
  jsonFile.writeFileSync('./src/actions/converted_actions.json', actionsObj)
})
