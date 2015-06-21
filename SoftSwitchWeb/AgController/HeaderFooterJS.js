var myApp1 = angular.module('myApp1', ['ngSanitize']);

myApp1.controller('HeaderFooterController', function ($http, $scope) {
   $scope.GetHeaderContent = function () {
        $http({
            method: 'POST',
            url: '../CS2.aspx/GetHeaderContentList',
            data:{name:'dev'}
        }).success(function (result) {
         var data = $.parseJSON(result.d);
            $scope.HeaderList = data;
        })
        .error(function (err) {
            alert(err)
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

         $http({
            method: 'Post',
            url:'../CS.aspx/GetImageList',
            data: { webpageid: WebPageID }
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            $scope.ImageList = data;
        })
    }
});

myApp1.controller('Header_FooterController', function ($http, $scope) {

    $scope.GetHeaderContent3 = function () {
        $http({
            method: 'Post',
            url: 'CS2.aspx/GetHeaderContentList',
            data:{name:'dev'}
        }).success(function (result) {
         var data = $.parseJSON(result.d);
            $scope.HeaderList3 = data;
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }

});