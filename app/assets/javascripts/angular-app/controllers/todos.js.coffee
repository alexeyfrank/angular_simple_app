
@App.TodosCtrl = ($rootScope, $scope, $location, Todo) ->
  $scope.todos = Todo.query()
  $scope.todosCollection = 'all'

  $scope.addTodo = ->
    todo = Todo.save $scope.newTodo
    $scope.todos.push todo
    $scope.newTodo = {}

  $scope.toggleTodo = (data) ->
    data.finished = !data.finished
    data.todo.$update()

  $scope.removeTodo = (data) ->
    todo = $scope.todos[data.$index]
    todo.$remove()
    $scope.todos.splice(data.$index, 1)

  $scope.showAllTodos = ->
    $scope.todosCollection = 'all'
    $scope.todos = Todo.query()
  $scope.showActiveTodos = ->
    $scope.todosCollection = 'active'
    $scope.todos = Todo.query({ m: 'or', finished_null: true, finished_false: true })
  $scope.showFinishedTodos = ->
    $scope.todosCollection = 'finished'
    $scope.todos = Todo.query({ finished_eq: true})


#  $scope.$watch 'newTodo.title', (path) ->
#    $location.path(path)