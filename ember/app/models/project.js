import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  app_url: DS.attr('string'),
  repo_url: DS.attr('string'),
  description: DS.attr('string')
});
