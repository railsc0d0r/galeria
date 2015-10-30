import Ember from 'ember';

export default Ember.Controller.extend({
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
      }
    },
    close() {
      $.modal.close();
      this.transitionToRoute('application');
    }
  }
});
