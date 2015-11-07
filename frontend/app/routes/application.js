import Ember from 'ember';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin,{
  init: function() {
    const _this = this;

    this.get('session').on('authenticationSucceeded', function() {
      _this._populateCurrentUser();
      _this._cleanUpAndTransition();
    });

    this._super.apply(this, arguments);
  },

  afterModel() {
    let session = this.get('session');

    if (session.get('isAuthenticated')) {
      this._populateCurrentUser();
    }
  },

  _cleanUpAndTransition() {
    $.modal.close();
    this.transitionTo('application');
    this.controllerFor('application').send('showSuccessfulAuthenticated');
  },

  _populateCurrentUser() {
    const user_id = this._getUserIdFromSession();
    return this.store.find('user', user_id).then(user => this.get('currentUser').set('content', user) && user);
  },

  _getUserIdFromSession() {
    const user_id = this.get('session.session.content.authenticated.user_id');
    return user_id;
  }

});
