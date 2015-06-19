'use strict';

/* Controllers */

angular.module('myApp.controllers', [])
    .controller('HeaderCtrl', ['$scope', '$http', function ($scope, $http) {
        $scope.$parent.title = "Manage Header and Footer Content";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/screen_rulers_glossy.png";
        $scope.$parent.showTopToggle = false;
        $.ajax({
            type: "POST",
            url: "CS.aspx/GetHeaderList",
            data: '{name: "hi" }',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert('Error');
            }
        });
        function OnSuccess(response) {
            var data = $.parseJSON(response.d);
            $scope.$parent.HeaderList1 = data;
        }

        $scope.SaveHeader = function () {
            alert('hi')
        }

    }]).controller('PicsCtrl', ['$scope','$http', function ($scope,$http) {
        $scope.$parent.title = "Upload Pics";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/chart.png";
        $scope.$parent.showTopToggle = false;

        $scope.imageInit = function () {
            $.ajax({
                type: "POST",
                url: "CS.aspx/GetWebPageList",
                // data: '{name: "hi" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert('Error');
                }
            });
            function OnSuccess(response) {
                var data = $.parseJSON(response.d);
                $scope.$parent.WebPageList = data;

                getImage($scope.$parent.WebPageList[0].WebPageID)

            }
        }
       
        $scope.ChangeWebPage = function () {
            getImage($scope.WebPageID)
        }
        $scope.ChangeContent = function () {
            getImagebyID();
        }
        function getImage(webpageid) {
            $.ajax({
                type: "POST",
                url: "CS.aspx/GetImageList",
                data: '{webpageid: ' + webpageid + ' }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess2,
                failure: function (response) {
                    alert('Error');
                }
            });
            function OnSuccess2(response) {
                var data = $.parseJSON(response.d);
                $scope.$parent.ImageList = data;
            }
        }
        function getImagebyID() {
            $.ajax({
                type: "POST",
                url: "CS.aspx/GetImageByID",
                data: '{contentimageid: ' + $("#SelectPicName").find(":selected").val() + ' }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess3,
                failure: function (response) {
                    alert('Error');
                }
            });
            function OnSuccess3(response) {
                var data = $.parseJSON(response.d);
                $scope.$parent.ImageURL = data;
            }
        }
       

        $scope.UploadLandingImage = function () {
            var input = document.getElementById('fileTolandingUpload');
          var  file = input.files[0];
          alert(input);
            var formData = new FormData();
            formData.append("file", file);
            //$.ajax({
            //    type: "POST",
            //    url: "CS.aspx/UploadImage",
            //    params: { cid: $("#SelectPicName").find(":selected").val() },
            //    data: formData,
            //    dataType: 'json',
            //    processData: false, // Don't process the files
            //    contentType: false,
            //    success:OnSuccess4,
            //    failure: function (response) {
            //        alert("error")
            //    }
            //})
            //function OnSuccess4(response) {
            //    alert('success')
            //}
            $http({
                method: 'Post',
                url:  'CS.aspx/UploadImage2',
                data: { cid: $("#SelectPicName").find(":selected").val() },
                headers: { 'Content-Type': undefined },
                data: formData
            }).success(function (result) {
                console.log(result);
            }).error(function (err) {
                console.log(err);
            })

        }

    }])
    .controller('ContentCtrl', ['$scope', function ($scope) {
        $scope.$parent.title = "Manage Webpage Content";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/cutting_pad.png";
        $scope.$parent.showTopToggle = false;

        $.ajax({
            type: "POST",
            url: "CS.aspx/GetWebPageList",
            // data: '{name: "hi" }',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert('Error');
            }
        });
        function OnSuccess(response) {
            var data = $.parseJSON(response.d);
            $scope.$parent.WebPageList = data;

            getContent($scope.$parent.WebPageList[0].WebPageID)
        }

        $scope.ChangeWebPage = function () {
            getContent($scope.WebPageID)
        }
        $scope.ChangeContent = function () {
            getContentbyid($scope.ContentID)
        }
        function getContent(webpageid) {
            $.ajax({
                type: "POST",
                url: "CS.aspx/GetContentList",
                data: '{webpageid: ' + webpageid + ' }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess2,
                failure: function (response) {
                    alert('Error');
                }
            });
            function OnSuccess2(response) {
                var data = $.parseJSON(response.d);
                $scope.$parent.ContentList = data;
            }
        }
        function getContentbyid(contentid) {
            $.ajax({
                type: "POST",
                url: "CS.aspx/GetContentbyid",
                data: '{contentid: ' + $scope.ContentID + ' }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess3,
                failure: function (response) {
                    alert('Error');
                }
            });
            function OnSuccess3(response) {
                var data = $.parseJSON(response.d);
                $scope.$parent.ContentList = data;
                editor.setValue(data[0].LangContent)
            }
        }

        $scope.UpdateContent = function () {

        }
    }])
    .controller('WebPageCtrl', ['$scope', function ($scope) {
        $scope.$parent.title = "Add/Edit Web Pages";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/box_address.png";
        $scope.$parent.showTopToggle = false;
    }])
    .controller('AddContentCtrl', ['$scope', function ($scope) {
        $scope.$parent.title = "Add New Page Content";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/document-plaid-pen.png";
        $scope.$parent.showTopToggle = false;
    }])
    .controller('AddPlanCtrl', ['$scope', function ($scope) {
        $scope.$parent.title = "Add Service Plan";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/fullscreen.png";
        $scope.$parent.showTopToggle = false;
    }])
    .controller('ViewPlanCtrl', ['$scope', function ($scope) {
        $scope.$parent.title = "Manage Service Plan";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/button_blue_add.png";
        $scope.$parent.showTopToggle = false;
    }])
    .controller('FormsCtrl', ['$scope', function ($scope) {
        $scope.$parent.title = "Forms";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/tablet.png";
        $scope.$parent.showTopToggle = false;
    }])
    .controller('MyCtrl1', ['$scope', function ($scope) {
        $scope.$parent.title = "Maverix Theme";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/screen_aqua_glossy.png";
        $scope.$parent.showTopToggle = true;

    }])
    .controller('MyCtrl2', ['$scope', function ($scope) {
        $scope.$parent.title = "Warnings";
        $scope.$parent.img = "img/iconset-addictive-flavour-set/png/moleskine_black.png";
        $scope.$parent.showTopToggle = false;
    }])
    .controller('AppCtrl', ['$scope', '$location', function ($scope, $location) {
        $scope.isActive = function (viewLocation) {
            return viewLocation === $location.path();
        };

        $scope.title = "Admin Panel";
        $scope.subNav1 = 0;
        $scope.img = "img/iconset-addictive-flavour-set/png/screen_aqua_glossy.png";
        $scope.showTopToggle = false;
    }]);
