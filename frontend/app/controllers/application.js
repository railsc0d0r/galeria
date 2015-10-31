import Ember from 'ember';
import SessionService from 'ember-simple-auth/services/session';

export default Ember.Controller.extend({
  showPopUp(text){
    console.log('Adding message popup')
    var div = "<div id='messagePopUp'>" + text + "</div>";
    $('body').prepend(div);
    $('#messagePopUp').fadeOut(5000,function() {$('#messagePopUp').remove();});
  },
  session: Ember.inject.service('session'),

  actions: {
    invalidateSession() {
      this.get('session').invalidate();
      this.showPopUp("Successfully logged out.");
    },
    showSuccessfulAuthenticated() {
      this.showPopUp("Successfully authenticated.");
    }
  }
});
