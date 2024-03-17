export const multiDefinedTable: Record<string, Record<string, string>> = {
  x: {
    position: 'getPositionX',
    region: 'getXCoordinateOfRegion'
  },
  y: {
    position: 'getPositionY',
    region: 'getYCoordinateOfRegion'
  },
  type: {
    item: 'getItemTypeOfItem',
    unit: 'getUnitTypeOfUnit',
    player: 'playerTypeOfPlayer',
    unitTypeGroup: 'getRandomUnitTypeFromUnitTypeGroup',
    attribute: 'getAttributeTypeOfAttribute'
  },
  owner: {
    item: 'getOwnerOfItem',
    unit: 'getOwner',
    sensor: 'ownerUnitOfSensor'
  },
  max: {
    Math: 'getMax',
    entity: 'entityAttributeMax',
    player: 'playerAttributeMax'
  },
  min: {
    Math: 'getMin',
    entity: 'entityAttributeMin',
    player: 'playerAttributeMin'
  }
}
