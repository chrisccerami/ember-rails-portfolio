import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  app_url: DS.attr('string')
});
