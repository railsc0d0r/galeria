`import Ember from 'ember'`

MessagesController = Ember.Controller.extend(
  actions:
    successfulAuthenticated: () ->
      this._showPopUp("Successfully authenticated.")
    
    loggingOut: () ->
      this._showPopUp("Logging out.")
    
    successfulCreatedPicture: () ->
      this._showPopUp("Picture successfully uploaded.")
    
    successfulPublishedPicture: (isPublic) ->
      if isPublic
        text = 'published'
      else
        text = 'unpublished'
        
      this._showPopUp("Picture successfully " + text + ".")
    
    showErrorMsg: (msg) ->
      this._showPopUp("Error: " + msg)
    
  _showPopUp: (text) ->
    div = "<div id='messagePopUp'>" + text + "</div>"
    $('body').prepend(div)
    $('#messagePopUp').fadeOut(2000, () -> $('#messagePopUp').remove())
)

`export default MessagesController`
