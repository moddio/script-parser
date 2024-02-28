import { actionToString, parser } from '..'
import { tmpGameData } from '../tmp/tmpGameData'

describe('parser', () => {
  test('1 == 1', () => { expect(parser.parse('1 == 1')).toMatchObject([{ operandType: 'number', operator: '==' }, 1, 1]) })
  test('1 == 1 convert back', () => { expect(actionToString({ o: parser.parse('1 == 1'), defaultReturnType: '', parentKey: '', gameData: { unitTypes: {} } })).toBe('1 == 1') })
  test('1 == 1 && 2 == 2', () => {
    expect(parser.parse('1 == 1 || 2 == 2')).toMatchObject([{ operandType: 'or', operator: 'OR' }, [{ operandType: 'number', operator: '==' }, 1, 1], [{ operandType: 'number', operator: '==' }, 2, 2]])
  })

  test('pos( 2+2, 2+2)', () => { expect(parser.parse('pos(2+2, 2+2)')).toMatchObject({ _returnType: 'position', function: 'xyCoordinate', x: { _returnType: 'number', function: 'calculate', items: [{ operator: '+' }, 2, 2] }, y: { _returnType: 'number', function: 'calculate', items: [{ operator: '+' }, 2, 2] } }) })
  test('thisEntity.testVar4', () => {
    expect(actionToString({
      o: parser.parse('thisEntity.testVar4'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('thisEntity.testVar4')
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
  test('thisEntity.$some_attr', () => {
    expect(parser.parse('thisEntity.$some_attr')).toMatchObject({ attribute: 'some_attr', entity: { _returnType: 'entity', function: 'thisEntity' }, function: 'getEntityAttribute' })
    expect(actionToString({
      o: parser.parse('thisEntity.$some_attr'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('thisEntity.$some_attr')
  })
  test('pos(x, y).x', () => {
    expect(actionToString({
      o: parser.parse('pos(0, 1).x'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('pos(0, 1).x')
  })
  test('x.pos(y)', () => {
    expect(parser.parse('0.pos(1)')).toMatchObject({ _returnType: 'position', function: 'xyCoordinate', x: 0, y: 1 })
    expect(actionToString({
      o: parser.parse('0.pos(1)'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('pos(0, 1)')
  })
  test('5.transformRegionDimensions(thisEntity, 2, 5, 10)', () => {
    expect(parser.parse('5.transformRegionDimensions(thisEntity, 2, 5, 10)')).toMatchObject({ _returnType: 'region', function: 'transformRegionDimensions', height: 10, region: { _returnType: 'entity', function: 'thisEntity' }, width: 5, x: 5, y: 2 })
  })
  test('true == true', () => {
    expect(parser.parse('true == false')).toMatchObject([{ operandType: 'boolean', operator: '==' }, true, false])
    expect(actionToString({
      o: parser.parse('true == false'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe('true == false')
  })
  test(' "a" != "b" ', () => {
    expect(parser.parse(' "a" != "b" ')).toMatchObject([{ operandType: 'string', operator: '!=' }, 'a', 'b'])
    expect(actionToString({
      o: parser.parse('"a" != "b"'),
      defaultReturnType: '',
      gameData: { unitTypes: {} },
      parentKey: ''
    })).toBe("'a' != 'b'")
  })
  test("getSelectedEntity.type == 'homie'", () => {
    expect(parser.parse("getSelectedEntity.type == 'homie'")).toMatchObject([{ operandType: 'string', operator: '==' }, { entity: { _returnType: 'entity', function: 'getSelectedEntity' }, function: 'getItemTypeOfItem' }, 'homie'])
    expect(actionToString({
      o: parser.parse("getSelectedEntity.type == 'homie'"),
      defaultReturnType: '',
      gameData: tmpGameData,
      parentKey: ''
    })).toBe("getSelectedEntity.type == 'homie'")
  })
  test('multiline actions', () => {
    expect(actionToString({
      o: [
        {
          playerType: 'aiNeutral',
          entity: {
            variableName: 'AI neutral',
            function: 'getVariable'
          },
          type: 'assignPlayerType'
        },
        {
          playerType: 'aiHostile',
          entity: {
            variableName: 'AI hostile',
            function: 'getVariable'
          },
          type: 'assignPlayerType'
        },
        {
          type: 'repeat',
          count: 8,
          actions: [
            {
              angle: 0,
              position: {
                region: {
                  function: 'getEntireMapRegion'
                },
                function: 'getRandomPositionInRegion'
              },
              entity: {
                function: 'getVariable',
                variableName: 'AI resources'
              },
              unitType: 'tree',
              type: 'createUnitAtPosition'
            }
          ]
        },
        {
          actions: [
            {
              type: 'createUnitAtPosition',
              unitType: 'rock',
              entity: {
                function: 'getVariable',
                variableName: 'AI resources'
              },
              position: {
                function: 'getRandomPositionInRegion',
                region: {
                  function: 'getEntireMapRegion'
                }
              },
              angle: 0
            }
          ],
          count: 5,
          type: 'repeat'
        }
      ],
      defaultReturnType: '',
      gameData: tmpGameData,
      parentKey: ''
    })).toBe(
      `assignPlayerType('aiNeutral', getVariable('AI neutral'))
assignPlayerType('aiHostile', getVariable('AI hostile'))
repeat (8) {
  createUnitAtPosition(0, randPos(getEntireMapRegion()), getVariable('AI resources'), 'tree')
}
repeat (5) {
  createUnitAtPosition('rock', getVariable('AI resources'), randPos(getEntireMapRegion()), 0)
}`
    )
  })
  test('multiline actions with comments, if', () => {
    expect(actionToString({
      o: [
        {
          type: 'condition',
          conditions: [
            {
              operandType: 'attributeType',
              operator: '=='
            },
            {
              function: 'getAttributeTypeOfAttribute',
              entity: {
                function: 'getTriggeringAttribute'
              }
            },
            'respawnTimer'
          ],
          then: [
            {
              type: 'createUnitAtPosition',
              unitType: 'survivor',
              position: {
                region: {
                  function: 'getEntireMapRegion'
                },
                function: 'getRandomPositionInRegion'
              },
              entity: {
                function: 'getTriggeringPlayer'
              },
              angle: 0
            },
            {
              player: {
                function: 'getTriggeringPlayer'
              },
              type: 'playerCameraTrackUnit',
              survivor: {
                function: 'getTriggeringPlayer'
              },
              unit: {
                function: 'getLastCreatedUnit'
              }
            },
            {
              type: 'forAllUnits',
              unitGroup: {
                player: {
                  function: 'getTriggeringPlayer'
                },
                function: 'allUnitsOwnedByPlayer',
                survivor: {
                  function: 'getTriggeringPlayer'
                }
              },
              actions: [
                {
                  entity: {
                    function: 'selectedUnit'
                  },
                  type: 'destroyEntity'
                }
              ],
              comment: 'when a player leaves, destroy all units owned by that player'
            }
          ],
          else: [],
          comment: 'respawn players\nhope everything works fine\nxD'
        }
      ],
      defaultReturnType: '',
      gameData: tmpGameData,
      parentKey: ''
    })).toBe(
      `// respawn players
// hope everything works fine
// xD
if (getAttributeTypeOfAttribute(triggeringAttr) == 'respawnTimer') {
  createUnitAtPosition('survivor', randPos(getEntireMapRegion()), triggeringPlayer, 0)
  playerCameraTrackUnit(triggeringPlayer, triggeringPlayer, lastCreatedUnit)
  // when a player leaves, destroy all units owned by that player
  forAllUnits(allUnitsOwnedByPlayer(triggeringPlayer, triggeringPlayer), destroyEntity(selectedUnit()))
}`
    )
  })
  test('multiline actions with raw json data', () => {
    expect(actionToString({
      o: {
        isProtected: true,
        triggers: [
          {
            type: 'gameStart'
          }
        ],
        actions: [
          {
            playerType: 'aiNeutral',
            entity: {
              variableName: 'AI neutral',
              function: 'getVariable'
            },
            type: 'assignPlayerType'
          },
          {
            playerType: 'aiHostile',
            entity: {
              variableName: 'AI hostile',
              function: 'getVariable'
            },
            type: 'assignPlayerType'
          },
          {
            type: 'repeat',
            count: 8,
            actions: [
              {
                angle: 0,
                position: {
                  region: {
                    function: 'getEntireMapRegion'
                  },
                  function: 'getRandomPositionInRegion'
                },
                entity: {
                  function: 'getVariable',
                  variableName: 'AI resources'
                },
                unitType: 'tree',
                type: 'createUnitAtPosition'
              }
            ]
          },
          {
            actions: [
              {
                type: 'createUnitAtPosition',
                unitType: 'rock',
                entity: {
                  function: 'getVariable',
                  variableName: 'AI resources'
                },
                position: {
                  function: 'getRandomPositionInRegion',
                  region: {
                    function: 'getEntireMapRegion'
                  }
                },
                angle: 0
              }
            ],
            count: 5,
            type: 'repeat'
          }
        ],
        name: 'initialize',
        parent: null,
        key: 'initialize',
        order: -1
      },
      defaultReturnType: '',
      gameData: tmpGameData,
      parentKey: ''
    })).toBe(
      `@gameStart
assignPlayerType('aiNeutral', getVariable('AI neutral'))
assignPlayerType('aiHostile', getVariable('AI hostile'))
repeat (8) {
  createUnitAtPosition(0, randPos(getEntireMapRegion()), getVariable('AI resources'), 'tree')
}
repeat (5) {
  createUnitAtPosition('rock', getVariable('AI resources'), randPos(getEntireMapRegion()), 0)
}`
    )
  })
  test('multiline actions with nested if', () => {
    expect(actionToString({
      o: {
        order: 4,
        key: 'unitDeath',
        parent: null,
        name: 'unit death',
        actions: [
          {
            type: 'condition',
            conditions: [
              {
                operandType: 'attributeType',
                operator: '=='
              },
              {
                function: 'getAttributeTypeOfAttribute',
                entity: {
                  function: 'getTriggeringAttribute'
                }
              },
              'health'
            ],
            then: [
              {
                else: [],
                then: [
                  {
                    comment: 'start respawn timer (it goes from 0 to 100)',
                    type: 'setPlayerAttribute',
                    attribute: 'respawnTimer',
                    entity: {
                      function: 'getOwner',
                      entity: {
                        function: 'getTriggeringUnit'
                      }
                    },
                    value: 0
                  },
                  {
                    entity: {
                      function: 'getTriggeringUnit'
                    },
                    type: 'dropAllItems'
                  },
                  {
                    else: [],
                    then: [
                      {
                        type: 'spawnItem',
                        itemType: 's2vnp9Ph2d',
                        position: {
                          function: 'getEntityPosition',
                          entity: {
                            function: 'getTriggeringUnit'
                          }
                        }
                      }
                    ],
                    conditions: [
                      {
                        operator: '==',
                        operandType: 'unitType'
                      },
                      {
                        entity: {
                          function: 'getTriggeringUnit'
                        },
                        function: 'getUnitTypeOfUnit'
                      },
                      'pig'
                    ],
                    type: 'condition'
                  }
                ],
                conditions: [
                  {
                    operator: '==',
                    operandType: 'unitType'
                  },
                  {
                    entity: {
                      function: 'getTriggeringUnit'
                    },
                    function: 'getUnitTypeOfUnit'
                  },
                  'survivor'
                ],
                type: 'condition',
                disabled: false
              },
              {
                else: [],
                then: [
                  {
                    type: 'spawnItem',
                    itemType: 'HBlfzHEdHP',
                    position: {
                      function: 'getEntityPosition',
                      entity: {
                        function: 'getTriggeringUnit'
                      }
                    }
                  }
                ],
                conditions: [
                  {
                    operator: '==',
                    operandType: 'unitType'
                  },
                  {
                    entity: {
                      function: 'getTriggeringUnit'
                    },
                    function: 'getUnitTypeOfUnit'
                  },
                  'bear'
                ],
                type: 'condition',
                disabled: false
              },
              {
                type: 'destroyEntity',
                entity: {
                  function: 'getTriggeringUnit'
                }
              }
            ],
            else: []
          }
        ],
        conditions: [
          {
            operandType: 'boolean',
            operator: '=='
          },
          true,
          true
        ],
        triggers: [
          {
            type: 'unitAttributeBecomesZero'
          }
        ]
      },
      defaultReturnType: '',
      gameData: tmpGameData,
      parentKey: ''
    })).toBe(
      `@unitAttributeBecomesZero
if (getAttributeTypeOfAttribute(triggeringAttr) == 'health') {
  if (triggeringUnit.type == 'survivor') {
    // start respawn timer (it goes from 0 to 100)
    setPlayerAttribute('respawnTimer', getOwner(triggeringUnit), 0)
    dropAllItems(triggeringUnit)
    if (triggeringUnit.type == 'pig') {
      spawnItem('s2vnp9Ph2d', getEntityPosition(triggeringUnit))
    }
  }
  if (triggeringUnit.type == 'bear') {
    spawnItem('HBlfzHEdHP', getEntityPosition(triggeringUnit))
  }
  destroyEntity(triggeringUnit)
}`
    )
  })
})
