`import Ember from 'ember'`

MessagesController = Ember.Controller.extend(
  actions:
    successfulAuthenticated: () ->
      this._showPopUp("Successfully authenticated.")
    
    loggingOut: () ->
      this._showPopUp("Logging out.")
    
    successfulCreatedPicture: () ->
      this._showPopUp("Picture successfully uploaded.")
    
  _showPopUp: (text) ->
    div = "<div id='messagePopUp'>" + text + "</div>"
    $('body').prepend(div)
    $('#messagePopUp').fadeOut(2000, () -> $('#messagePopUp').remove())
)

`export default MessagesController`
