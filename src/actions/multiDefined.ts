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
    unit: 'getUnitTypeOfUnit',
    item: 'getItemTypeOfItem',
    player: 'playerTypeOfPlayer',
    unitTypeGroup: 'getRandomUnitTypeFromUnitTypeGroup',
    attribute: 'getAttributeTypeOfAttribute'
  },
  owner: {
    unit: 'getOwner',
    item: 'getOwnerOfItem',
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
  },
  name: {
    entity: 'entityName',
    _: 'entityName'
  }
}
