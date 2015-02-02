import Ember from "ember";

var ProjectsNewController = {
  actions: {
    save: function () {
      var project = this.get('model');

      project.save();
    },
  }
};

export default Ember.ObjectController.extend(ProjectsNewController);
