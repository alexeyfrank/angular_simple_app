@App =
  angular.module('SimpleApp', ["SimpleApp.Services"])
        .config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
          $locationProvider.hashPrefix '!'
          $routeProvider.when '/todos', { templateUrl: '/partials/todos', controller: 'App.TodosCtrl' }
          $routeProvider.otherwise({ redirectTo: '/todos' })
        ])