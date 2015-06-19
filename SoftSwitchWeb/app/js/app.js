'use strict';


// Declare app level module which depends on filters, and services
angular.module('myApp', [
    'ngRoute',
    'myApp.filters',
    'myApp.services',
    'myApp.directives',
    'myApp.controllers'
]).
    config(['$routeProvider', function ($routeProvider) {
        $routeProvider.when('/headers', { templateUrl: 'app/partialview/headers.html', controller: 'HeaderCtrl' });
        $routeProvider.when('/contents', { templateUrl: 'app/partialview/contents.html', controller: 'ContentCtrl' });
        $routeProvider.when('/images', { templateUrl: 'app/partialview/images.html', controller: 'PicsCtrl' });
        $routeProvider.when('/guides', { templateUrl: 'app/partialview/guides.html', controller: 'ControlsCtrl' });
        $routeProvider.when('/webpages', { templateUrl: 'app/partialview/webpages.html', controller: 'WebPageCtrl' });
        $routeProvider.when('/pagecontents', { templateUrl: 'app/partialview/pagecontents.html', controller: 'AddContentCtrl' });
        $routeProvider.when('/addplan', { templateUrl: 'app/partialview/addplan.html', controller: 'AddPlanCtrl' });
        $routeProvider.when('/viewplan', { templateUrl: 'app/partialview/viewplan.html', controller: 'ViewPlanCtrl' });
        $routeProvider.when('/salereport', { templateUrl: 'app/partials/salereport.html', controller: 'MyCtrl1' });
        $routeProvider.otherwise({redirectTo: '/view1'});
    }]);
