import { actionToString, parser } from '..'
import { tmpGameData } from '../tmp/tmpGameData'

describe('parser-multiline', () => {
  test('multiline actions with nested if and disabled some', () => {
    expect(actionToString({
      o: {
        isProtected: true,
        triggers: [],
        conditions: [
          {
            operator: '==',
            operandType: 'boolean'
          },
          true,
          true
        ],
        actions: [
          {
            type: 'setTimeOut',
            duration: 8,
            actions: [
              {
                type: 'sendChatMessage',
                message: 'message',
                comment: 'hello'
              },
              {
                type: 'repeatWithDelay',
                _variant: null,
                actions: [
                  {
                    type: 'sendChatMessage',
                    message: 'message'
                  }
                ],
                _startIdx: 1,
                count: 2,
                delay: 500
              }
            ]
          }
        ],
        name: 'test',
        parent: null,
        key: '',
        order: 0
      },
      defaultReturnType: '',
      gameData: tmpGameData,
      parentKey: ''
    })).toBe(
`setTimeOut(8) {
  // hello
  sendChatMessage('message')
  repeatWithDelay(2, 500) {
    sendChatMessage('message')
  }
}`
    )
  })
})
