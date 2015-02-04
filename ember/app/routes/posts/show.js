import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('post', params.post_id);
  },
  setupController: function(controller, model) {
    var comment = this.store.createRecord('comment');
    controller.set('newComment', comment);
    this._super(controller, model);
  }
});
