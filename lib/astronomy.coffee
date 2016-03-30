# Events
Astronomy.eventManager.on 'validationError', (e) ->
  switch e.data.validator.name
    when 'required'
      e.setMessage e.data.param or _.startCase(e.data.fieldName) + ' field is required'
      e.stopPropagation()
    when 'date'
      e.setMessage 'Not a valid date'
      e.stopPropagation()
