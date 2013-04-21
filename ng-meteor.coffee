angular.module 'ngMeteor.directives', []

angular.module 'ngMeteor.services', []

angular.module('ngMeteor.blade', []).run ['$templateCache',
    ($templateCache) ->
        $templateCache.put "#{key}.blade", render() for own key, render of Template
    ]
angular.module 'ngMeteor', ['ngMeteor.blade', 'ngMeteor.services', 'ngMeteor.directives'], ->
