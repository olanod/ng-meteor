var path = require('path');

Package.describe({
    summary: "AngularJs with Blade for Meteor"
});

Package.on_use(function (api) {
    api.use('coffeescript');
    // provides css files for ui-bootstrap
    api.use('bootstrap','client');

    api.add_files(path.join('lib', 'angular.js'), 'client');
    // Not necessary cool stuff out of the box for Angular
    api.add_files(path.join('lib', 'angular-ui.js'), 'client');
    api.add_files(path.join('lib', 'ui-bootstrap.js'), 'client');
    //
    api.add_files('ng-meteor.coffee', 'client');
});
