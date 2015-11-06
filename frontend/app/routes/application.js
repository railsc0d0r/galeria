import Ember from 'ember';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin,{
  init() {
          $.modal.close();
  },
  beforeModel() {
    if (this.session.isAuthenticated) {
      this._populateCurrentUser();
    }
  },

  actions: {
    sessionAuthenticationSucceeded() {
      this._cleanUpAndTransition();
      // this._populateCurrentUser().then(user => this._cleanUpAndTransition());
    }
  },

  _cleanUpAndTransition() {
    $.modal.close();
    this.transitionTo('application');
    this.controllerFor('application').send('showSuccessfulAuthenticated');
  },

  _populateCurrentUser() {
    const { user_id, user_type } = this.get('session.secure');
    return this.store.find(user_type, user_id).then(user => this.get('currentUser').set('content', user) && user);
  }

});
