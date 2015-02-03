import Ember from "ember";

var PostsShowController = {
  isEditing: false,
  actions: {
    edit: function() {
      this.set('isEditing', true);
    },

    doneEditing: function() {
      var post = this.get('model');
      post.save();
      this.set('isEditing', false);
    },
    delete: function() {
      var post = this.get('model');
      post.destroyRecord();
      this.transitionToRoute('posts.index');
    }
  }
};

export default Ember.ObjectController.extend(PostsShowController);
