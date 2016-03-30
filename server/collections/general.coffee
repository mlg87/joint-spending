_.each Astronomy.classes, (astroClass) ->
  # private classes don't get extended
  return unless astroClass.getCollection()

  astroClass.getCollection().deny
    insert: -> true
    update: -> true
    remove: -> true

  # everybody gets createdAt and updatedAt
  astroClass.extend
    fields:
      createdAt:
        type: 'date'
        immutable: true
      updatedAt: 'date'
