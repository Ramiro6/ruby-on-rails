// Override the default adapter with the `DS.ActiveModelAdapter` which
// is built to work nicely with the ActiveModel::Serializers gem.
App.ApplicationAdapter = DS.ActiveModelAdapter.extend({
});


export default DS.ActiveModelAdapter.extend({
  host: 'http://localhost:3000'
});
