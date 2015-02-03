import Ember from "ember";

var PostsNewController = {
  actions: {
    save: function () {
      var post = this.get('model');

      post.save();
      this.transitionToRoute('posts.show', post);
    },
  }
};

export default Ember.ObjectController.extend(PostsNewController);
