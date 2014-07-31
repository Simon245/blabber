buildMessage = (email, message) ->
  { email: email, content: message }

getUserEmail = ->
  Meteor.user().emails[0].address

Template.chatroom.helpers
  allMessages: ->
    Messages.find({}).fetch()

Template.chat_box.events
  'submit #chat-box-form': (e, t) ->

    input = t.find('#message')
    message = input.value
    input.value = " "
    email = getUserEmail()

    Messages.insert(buildMessage(email, message))

    e.preventDefault()
    false