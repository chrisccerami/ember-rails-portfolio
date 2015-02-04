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
    },
    saveComment: function() {
      var _this = this;
      var comment = this.get('newComment');
      var post = this.get('model');
      comment.set('post', post);
      //this is the controller
      comment.save().then(function() {
        //this is no longer the controller
        var comment = _this.store.createRecord('comment');
        _this.set('newComment', comment);
      });
    }
  }
};

export default Ember.Controller.extend(PostsShowController);
