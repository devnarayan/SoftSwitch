var myApp1 = angular.module('myApp1', ['ngSanitize']);

myApp1.controller('HeaderFooterController', function ($http, $scope) {
   $scope.GetHeaderContent = function () {
      
        $http({
            method: 'POST',
            url:  'CS2.aspx/GetHeaderContent'
           // params: { LanguageID: LanguageID }
        }).success(function (result) {
            $scope.HeaderList = result;
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }

});
myApp1.controller('ContentController', function ($http, $scope) {
    $scope.GetContentListByID = function () {
        var WebPageID = $('#hdnfld').val();
        
        $http({
            method: 'POST',
            url: 'CS2.aspx/GetContentList',
            data: { WebPageID: WebPageID }
        })
        .success(function (result) {
            var data = $.parseJSON(result.d);
            $scope.ContentList = data;
        })
        .error(function (err) {
            alert(err)
            $("#loading").hide();
            console.log(err);
        })
    }
});

myApp1.controller('Header_FooterController', function ($http, $scope) {

    $scope.GetHeaderContent3 = function () {
        $http({
            method: 'Get',
            url: 'CS2.aspx/GetHeaderContent'
            //  params: { LanguageID: LanguageID }
        }).success(function (result) {
            $scope.HeaderList = result;
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }

});