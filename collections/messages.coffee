@Messages = new Meteor.Collection 'messages'

Messages.allow
  insert: (userId, doc) -> !!userId
  update: (userId, doc) -> false
  remove: (userId, doc) -> false
