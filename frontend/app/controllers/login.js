import Ember from 'ember';

export default Ember.Controller.extend({
  session: Ember.inject.service('session'),

  actions: {
    authenticate() {
      let login = this.get('login');
      let password = this.get('password');

      this.get('session').authenticate('authenticator:devise', login, password).catch((reason) => {
        this.set('errorMessage', reason.error);
      });
    }
  }
});
