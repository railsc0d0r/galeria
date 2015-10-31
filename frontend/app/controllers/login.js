import Ember from 'ember';
import SessionService from 'ember-simple-auth/services/session';

export default Ember.Controller.extend({
  needs: ['application'],
  session: Ember.inject.service('session'),

  actions: {
    authenticate() {
      let login = this.get('login');
      let password = this.get('password');

      let session = this.get('session')
      session.authenticate('authenticator:devise', login, password).catch((reason) => {
        this.set('errorMessage', reason.error);
        this.set('login', '');
        this.set('password', '');
      });
      if (session.isAuthenticated) {
        $.modal.close();
        this.transitionToRoute('application');
        this.get('controllers.application').send('showSuccessfulAuthenticated');
      }
    },
    close() {
      $.modal.close();
      this.transitionToRoute('application');
    }
  }
});
