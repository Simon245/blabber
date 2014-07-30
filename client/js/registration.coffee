Template.registration.events
  'submit #registration-form': (e, t) ->

    email = t.find('#accounts-email').value
    password = t.find('#accounts-password').value
    confirm = t.find('#accounts-confirm').value

    console.log email, password,

    # Meteor.registrationWithPassword email, password, confirm (error)
    #   if error
    #     console.log error

    #   else
    #     console.log "Logged in as:"
    #     console.log Meteor.user()

    e.preventDefault()
    false