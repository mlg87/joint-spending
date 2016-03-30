Meteor.autorun (c) ->
  # setup email methods and templates to use here
  c.stop()

# comment in once settings.JSON is set up and in git ignore (mailgun creds)
# if Meteor.isServer
#   Meteor.startup ->
#     process.env.MAIL_URL = Meteor.settings.MAIL_URL

# handle events for enrollmentLink or resetPasswordLink on client (see meteor accounts docs)
