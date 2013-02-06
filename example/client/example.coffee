angular.element(document).ready ->
  angular.bootstrap document, ['app']

app = angular.module 'app', ['ngMeteor'], ($routeProvider) ->
  $routeProvider.when '/',
    templateUrl: 'welcome.blade'
  $routeProvider.when '/more',
    templateUrl: 'more.blade'
