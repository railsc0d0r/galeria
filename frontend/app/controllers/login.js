import Ember from 'ember';

export default Ember.Controller.extend({
  session: Ember.inject.service('session'),

  actions: {
    authenticate() {
      var identification = this.get('identification');
      var password = this.get('password');

      console.log("Authenticating user: " + identification + " w/ pw: " + password);

      this.get('session').authenticate('authenticator:devise', identification, password).catch((reason) => {
        this.set('errorMessage', reason.error);
      });
    }
  }
});
