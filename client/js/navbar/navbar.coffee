Template.chatroom.events
  'click #logout': (e) ->
    Meteor.logout()
    e.preventDefault()
    false