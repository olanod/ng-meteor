var path = Npm.require('path');

Package.describe({
    summary: "AngularJs with Blade for Meteor"
});

Package.on_use(function (api) {
    api.use('coffeescript');
    api.add_files(path.join('lib', 'angular.js'), 'client');
    api.add_files('ng-meteor.coffee', 'client');
});
