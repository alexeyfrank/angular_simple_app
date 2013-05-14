@App.TopNavCtrl = ($scope) ->
  $scope.app_name = 'Simple Application'
  $scope.items = [
    {
      title: 'Todos'
      link: '/#!/todos'
    }
  ]