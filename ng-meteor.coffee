angular.module 'ngMeteor.directives', []

angular.module 'ngMeteor.services', []

angular.module('ngMeteor.blade', []).run ['$templateCache','$rootScope', '$compile'
    ($templateCache,$rootScope,$compile) ->
        $templateCache.put "#{key}.blade", render() for own key, render of Template
        # re-render body compiling it for angular use
        Meteor.startup ()->
            Spark.finalize document.body    # necesary?
            $('body').html $compile(Template.body()) $rootScope
            do $rootScope.$apply
    ]
angular.module 'ngMeteor', ['ngMeteor.blade', 'ngMeteor.services', 'ngMeteor.directives']
