import Ember from 'ember';
import SessionService from 'ember-simple-auth/services/session';

export default Ember.Controller.extend({
  session: Ember.inject.service('session'),

  actions: {
    invalidateSession() {
      setTimeout(this._showPopUp("Logging out."),6000);
      this.get('session').invalidate();
    },
    showSuccessfulAuthenticated() {
      this._showPopUp("Successfully authenticated.");
    }
  },

  _showPopUp(text) {
    console.log('Adding message popup');
    var div = "<div id='messagePopUp'>" + text + "</div>";
    $('body').prepend(div);
    $('#messagePopUp').fadeOut(5000,function() {$('#messagePopUp').remove();});
  }
});
