import Ember from "ember";

var ProjectsNewController = {
  actions: {
    save: function () {
      var project = this.get('model');

      project.save();
      this.transitionToRoute('projects.show', project);
    },
  }
};

export default Ember.ObjectController.extend(ProjectsNewController);
