export const attributeTable: Record<string, {
  method: string[]
  attr: string[]
}> = {
  string: {
    method: [
      'slice',
      // 'toUpperCase', we even don't have one
      'toLowerCase',
      'concat'
    ],
    attr: [
    ]
  },
  number: {
    method: [],
    attr: []
  },
  unit: {
    method: ['unitsFacingAngle']
  }
}
