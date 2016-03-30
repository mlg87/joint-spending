JS.Users = Meteor.users
JS.User = Astronomy.Class
  name: 'User'
  collection: JS.Users
  fields:
    # Accounts pkg standard fields
    username: 'string'
    services: 'object'
    emails:
      type: 'array'
      nested:
        name: '_email'
        fields:
          address: 'string'
          verified: 'boolean'
    roles:
      type: 'array'
      nested: 'string'
      default: -> []
    status:
      type: 'object'
      default: -> {}
  validators:
    username: Validators.and([Validators.required(), Validators.unique()])
