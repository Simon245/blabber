MinimumPasswordLength = 4

passwordConfirmed = (password, confirm) ->
  password == confirm

passwordIsValid = (password) ->
  password.length >= MinimumPasswordLength

createUser = (email, password) ->
  { email: email, password: password }

Template.registration.events
  'submit #registration-form': (e, t) ->

    email = t.find('#accounts-email').value
    password = t.find('#accounts-password').value
    confirm = t.find('#accounts-confirm').value

    console.log email, password, confirm

    if passwordConfirmed(password, confirm)
      if passwordIsValid(password)
        user = createUser(email, password)
        Accounts.createUser user, (error) ->
          if error
            console.log error
          else
            console.log "Logged in as:"
            console.log Meteor.user()
      else
        console.log "Password and confirmation not match"
    else
      console.log "Password is invalid"

    e.preventDefault()
    false