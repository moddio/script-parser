import { actionToString, parser } from '..'

describe('parser', () => {
  test('1 == 1', () => { expect(parser.parse('1 == 1')).toMatchObject({ conditions: [{ operandType: 'number', operator: '==' }, 1, 1], else: [], then: [], type: 'condition' }) })
  test('1 == 1 convert back', () => { expect(actionToString({ o: { conditions: [{ operandType: 'number', operator: '==' }, 1, 1], else: [], then: [], type: 'condition' }, defaultReturnType: '', parentKey: '', gameData: { unitTypes: {} } })).toBe('1 == 1') })
  test('1 == 1 && 2 == 2', () => {
    expect(parser.parse('1 == 1 || 2 == 2')).toMatchObject({ _returnType: 'conditions', conditions: [{ operandType: 'or', operator: 'OR' }, [{ operandType: 'number', operator: '==' }, 1, 1], [{ operandType: 'number', operator: '==' }, 2, 2]], else: [], then: [], type: 'condition' })
  })

  test('pos( 2+2, 2+2)', () => { expect(parser.parse('pos(2+2, 2+2)')).toMatchObject({ _returnType: 'position', function: 'xyCoordinate', x: { _returnType: 'number', function: 'calculate', items: [{ operator: '+' }, 2, 2] }, y: { _returnType: 'number', function: 'calculate', items: [{ operator: '+' }, 2, 2] } }) })
  test('thisEntity.testVar4', () => {
    expect(actionToString({
      o: parser.parse('thisEntity.testVar4'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('thisEntity.testVar4 ')
  })
  test('1+1+"hello"', () => {
    expect(parser.parse('1+1+"hello"')).toMatchObject({ _returnType: 'string', function: 'concat', textA: { _returnType: 'string', function: 'concat', textA: 1, textB: 1 }, textB: 'hello' })
  })
  test('(1+1)+"hello"', () => {
    expect(parser.parse('(1+1)+"hello"')).toMatchObject({ _returnType: 'string', function: 'concat', textA: { _returnType: 'number', function: 'calculate', items: [{ operator: '+' }, 1, 1] }, textB: 'hello' })
  })
  test('1 != 1 and 10 > 1', () => {
    expect(actionToString({
      o: parser.parse('1 != 1 and 10 > 1'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('1 != 1 && 10 > 1')
  })
  test('1 != 1 and 10 > 1 and 10 > 1 and 10 > 1 and 10 > 1 and 10 > 1 or 10 < 100', () => {
    expect(actionToString({
      o: parser.parse('1 != 1 and 10 > 1 and 10 > 1 and 10 > 1 and 10 > 1 and 10 > 1 or 10 < 100'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('1 != 1 && 10 > 1 && 10 > 1 && 10 > 1 && 10 > 1 && 10 > 1 || 10 < 100')
  })
  test('(1+1)+"hello"', () => {
    expect(actionToString({
      o: parser.parse('(1+1)+"hello"'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('(1 + 1 ) + "hello"')
  })
  test('thisEntity.$some_attr"', () => {
    expect(parser.parse('thisEntity.$some_attr')).toMatchObject({ attribute: 'some_attr', entity: { _returnType: 'entity', function: 'thisEntity' }, function: 'getEntityAttribute' })
  })
})
