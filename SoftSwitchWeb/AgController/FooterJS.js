myApp.controller('Header_FooterController', function ($http, $scope) {

    $scope.GetHeaderContent3 = function () {
        $http({
            method: 'Get',
            url: basePath + 'CS2.aspx/GetHeaderContent'
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