import DS from 'ember-data';

export default DS.Model.extend({
  comments: DS.hasMany('comment', { async: true }),
  title: DS.attr('string'),
  body: DS.attr('string'),
  created_at: DS.attr('date'),
  updated_at: DS.attr('date')
});
