Router.map ->
  @route 'login', { path: '/' }
  @route 'registration'
  @route 'chatroom'

autoLogin = (pause) ->
  Router.go 'chatroom' if Meteor.userId()

requireLogin = (pause) ->
  Router.go 'login' unless Meteor.userId()

Router.onBeforeAction autoLogin,
  only: ['login', 'registration']

Router.onBeforeAction requireLogin,
  only: 'chatroom'