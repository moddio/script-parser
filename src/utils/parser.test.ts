import { actionToString, parser } from '..'

describe('parser', () => {
  test('1 == 1', () => { expect(parser.parse('1 == 1')).toMatchObject({ conditions: [{ operandType: 'number', operator: '==' }, 1, 1], else: [], then: [], type: 'condition' }) })
  test('1 == 1 convert back', () => { expect(actionToString({ o: { conditions: [{ operandType: 'number', operator: '==' }, 1, 1], else: [], then: [], type: 'condition' }, defaultReturnType: '', parentKey: '', gameData: { unitTypes: {} } })).toBe('1 == 1') })
  test('1 == 1 && 2 == 2', () => {
    expect(parser.parse('1 == 1 || 2 == 2')).toMatchObject({
      conditions: [
        {
          operandType: 'or',
          operator: 'OR'
        },
        [
          {
            operandType: 'boolean',
            operator: '=='
          },
          true,
          true
        ],
        [
          {
            operandType: 'boolean',
            operator: '=='
          },
          true,
          true
        ]
      ],
      else: [],
      then: [],
      type: 'condition'
    })
  })
})
