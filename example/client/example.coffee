angular.element(document).ready ->
  angular.bootstrap document, ['app']

app = angular.module 'app', ['ngMeteor'], ['$routeProvider','$locationProvider',($routeProvider,$locationProvider) ->
  $routeProvider.when '/',
    templateUrl: 'welcome.blade'
  $routeProvider.when '/more',
    templateUrl: 'more.blade'
  $locationProvider.html5Mode true
]
