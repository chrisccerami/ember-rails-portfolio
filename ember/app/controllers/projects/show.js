import Ember from "ember";

var ProjectsShowController = {
  isEditing: false,
  actions: {
    edit: function() {
      this.set('isEditing', true);
    },

    doneEditing: function() {
      var project = this.get('model');
      project.save();
      this.set('isEditing', false);
    },
    delete: function() {
      var project = this.get('model');
      project.destroyRecord();
      this.transitionToRoute('projects.index');
    }
  }
};

export default Ember.ObjectController.extend(ProjectsShowController);
