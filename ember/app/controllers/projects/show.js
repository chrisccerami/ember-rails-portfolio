import Ember from "ember";

var ProjectsShowController = {
  isEditing: false,
  actions: {
    edit: function() {
      this.set('isEditing', true);
    },

    doneEditing: function() {
      this.set('isEditing', false);
    }
  }
};

export default Ember.ObjectController.extend(ProjectsShowController);
