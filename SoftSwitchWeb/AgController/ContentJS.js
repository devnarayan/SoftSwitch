myApp.controller('ContentController', function ($http, $scope) {
    

    $scope.GetContentListByID = function () {
        var WebPageID = $('#hdnfld').val();
        alert('hi')
        $http({
            method: 'Get',
            url:  'CS2.aspx/GetContentList',
            params: { WebPageID: WebPageID }
        })
        .success(function (result) {
            $scope.ContentList = result;
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }
});