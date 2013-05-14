@App.Services = angular.module('SimpleApp.Services', ["ngResource"])

@App.Services.factory 'Todo', ($resource) ->
  $resource '/api/v1/todos/:id', { id: '@id' }, { update: { method: 'PUT' } }
