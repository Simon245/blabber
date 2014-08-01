Template.chatroom.events
  'click #logout': (e) ->
    Meteor.logout()
    e.preventDefault()
    false

  'click #reset': (e) ->
    Meteor.call('clearMessages')