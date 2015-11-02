import Ember from 'ember';

export default Ember.Controller.extend({
  session: Ember.inject.service('session'),

  actions: {
    invalidateSession() {
      this._showPopUp("Logging out.");

      var _this = this;
      setTimeout(function(){
        _this.get('session').invalidate();
      },2300);
    },
    showSuccessfulAuthenticated() {
      this._showPopUp("Successfully authenticated.");
    }
  },

  _showPopUp(text) {
    var div = "<div id='messagePopUp'>" + text + "</div>";
    $('body').prepend(div);
    $('#messagePopUp').fadeOut(2000,function() {$('#messagePopUp').remove();});
  }
});
