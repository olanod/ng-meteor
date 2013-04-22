Ng-Meteor
=========

This meteor package integrates AngularJs with Meteor using [blade](https://github.com/bminer/node-blade) as templating engine.  
It's recommended to use with coffeescript and stylus for complete brace-less development.

## Installation ##
Install the atmosphere package with meteorite.  
From your meteor project's root directory do `mrt add blade` and `mrt add ng` then `mrt` to start working.  
You should also add CoffeeScript(`mrt add coffeescript`) and Stylus(`mrt add stylus`) for a better experience.

## Project Structure ##
No special structure needed. Only blade *suggests* that the templates should be stored in views directory

## Use ##
Angular will automatically load templates like normal templates.

    //- body.blade
    #content(ng-view)
    nav(ng-include="'navigation.blade'")
    

