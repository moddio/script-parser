import { actionToString } from '..'
import { tmpGameData } from '../tmp/tmpGameData'

describe('parser_multiline', () => {
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
            type: 'sendChatMessage',
            message: {
              function: 'concat',
              textA: {
                function: 'getPlayerName',
                entity: {
                  function: 'getTriggeringPlayer'
                }
              },
              textB: 'is a driver!'
            },
            disabled: true
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
      '-- sendChatMessage(getPlayerName(triggeringPlayer) + \'is a driver!\')'
    )
  })
})

describe('parser_multiline_back', () => {
  test('initialize', () => {
    // TODO
  })
})
