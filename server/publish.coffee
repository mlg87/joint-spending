# all collections will be published here (turn off autopublish once this is set up)
#
# e.g.
# Meteor.publish 'users', (query={}, options={}) ->
#   return @ready() unless @userId?
#   user = JS.Users.findOne {_id: @userId}
#   _.extend query, {groups: {$in: user.groups}}
#   JS.Users.find {query, options}
