var myApp = angular.module('myApp', ['ngSanitize']);

myApp.controller('SideBarController',function($http,$scope){

})
myApp.controller('HeaderController', function ($http, $scope) {
    $scope.title = "Manage Header and Footer Content";
    $scope.img = "../img/iconset-addictive-flavour-set/png/screen_rulers_glossy.png";
    $scope.showTopToggle = false;

    $scope.GetHeaderInit = function () {
        getHeader();
    }
    $scope.SaveNewHeader = function ()
    {
        $http({
            method: 'POST',
            url: '../CS.aspx/SaveNewHeader',
            data: { label: $("#hdlabel").val(), content: $("#hdContent").val() }
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            alert(data);
            getHeader()
        })
    }
    $scope.DeleteHeader = function (HeaderID) {
        $http({
            method: 'POST',
            url: '../CS.aspx/DeleteHeader',
            data: { HeaderID:HeaderID}
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            alert(data);
            getHeader()
        }).error(function (er) {
            alert(er);
        })
    }
    $scope.SaveHeader = function () {
        var ids = [];
        var vlus = [];
        $("input[type='text']").each(function () {
            ids.push($(this).attr("id"));
            vlus.push($(this).val());
        })
        $http({
            method: 'POST',
            url: '../CS.aspx/SaveHeaderList',
            data: { ids: ids, vlus: vlus }
        }).success(function(response){
            var data = $.parseJSON(response.d);
            alert(data);
        })
     
    }
    function getHeader() {
        $http({
            method: 'POST',
            url: '../CS.aspx/GetHeaderList',
            data: {name:'dev'}
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            $scope.HeaderList1 = data;
        })
    }
})

myApp.controller('ContentController', function ($http, $scope) {
    $scope.isActive = function (viewLocation) {
        return viewLocation === $location.path();
    };
    $scope.title = "Manage Webpage Content";
    $scope.img = "../img/iconset-addictive-flavour-set/png/cutting_pad.png";
    $scope.showTopToggle = false;
    $scope.ContentInit = function () {
        $http({
            method: 'Post',
            url: "../CS.aspx/GetWebPageList",
            data: {}
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            $scope.WebPageList = data;
            getContent($scope.WebPageList[0].WebPageID)
        })
    }
    $scope.ChangeWebPage = function () {
        getContent($scope.WebPageID)
    }
    $scope.ChangeContent = function () {
        getContentbyid($scope.ContentID)
    }
    function getContent(webpageid) {
        $http({
            method:'Post',
            url: '../CS.aspx/GetContentList',
            data:{webpageid:webpageid}
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            $scope.ContentList = data;
        })
    }
    function getContentbyid(contentid) {
        $http({
            method:'Post',
            url: '../CS.aspx/GetContentbyid',
            data: { contentid: $scope.ContentID }
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            editor.setValue(data[0].LangContent);
        })
    }

    $scope.UpdateContent = function () {
        var lcontent = editor.getValue();
        $http({
            method:'Post',
            url: '../CS.aspx/UpdateContent',
            data: { contentid :$scope.ContentID,langContent: lcontent},
        }).success(function (response) {

            alert(response.d);
        })
    }
    $scope.SaveNewContent = function () {
        var lcontent = editor.getValue();
        $http({
            method: 'Post',
            url: '../CS.aspx/AddContent',
            data: { pageid: $scope.WebPageID, enContent: $scope.EnContent, langContent: lcontent },
        }).success(function (response) {
             getContent($scope.WebPageID)
            alert(response.d);
        })
    }
    $scope.DeleteContent = function (contentid) {
        $http({
            method: 'Post',
            url: '../CS.aspx/DeleteContent',
            data: { contentid: contentid }
        }).success(function (response) {
            getContent($scope.WebPageID)
            alert(response.d);
        })
    }
})


myApp.controller('ImageController', function ($http, $scope) {
    $scope.title = "Upload Pics";
    $scope.img = "../img/iconset-addictive-flavour-set/png/chart.png";
    $scope.showTopToggle = false;
    $scope.ImageURL = "#";
    $scope.imageInit = function () {
        $http({
            method: 'Post',
            url: "../CS.aspx/GetWebPageList",
            data: {}
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            $scope.WebPageList = data;
            getImage($scope.WebPageList[0].WebPageID);
        })
    }

    $scope.ChangeWebPage = function () {
        getImage($scope.WebPageID)
    }
    $scope.ChangeContent = function () {
        getImagebyID();
    }
    function getImage(webpageid) {
        $http({
            method: 'Post',
            url:'../CS.aspx/GetImageList',
            data: { webpageid: webpageid }
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            $scope.ImageList = data;
        })
    }
    function getImagebyID() {
        var pid = $("#SelectPicName").find(":selected").val();
        $http({
            method:'Post',
            url: '../CS.aspx/GetImageByID',
            data: { contentimageid: pid }
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            $scope.Pics = data[0].PicsUrl;
        })
    }


    $scope.UploadLandingImage = function () {
        var input = document.getElementById('fileTolandingUpload');
        var file = input.files[0];
        alert($("#Webpageid").find(":selected").val());
        var formData = new FormData();
        formData.append("file", file);
        formData.append("webpageid", $("#Webpageid").find(":selected").val());
        formData.append("title", $("#ImageTitle").val())
        $http({
            method: 'Post',
            url: '../CS.aspx/AddUploadImage',
            params: { webpageid: $("#Webpageid").find(":selected").val(),title:$("#ImageTitle").val() },
            headers: { 'Content-Type': undefined },
            data: formData
        }).success(function (response) {
        alert('done')
            console.log(response);
        }).error(function (err) {
            console.log(err);
        })
    }

    $scope.DeleteImage = function (picsid) {
        $http({
            method:'Post',
            url: "../CS.aspx/DeleteImage",
            data: { imageid: picsid }
        }).success(function (response) {
            alert(response.d);
              getImage($scope.WebPageID)
        })
    }
})

myApp.controller('AddPageController', function ($http, $scope) {
    $scope.isActive = function (viewLocation) {
        return viewLocation === $location.path();
    };
    $scope.title = "Add New Web Page";
    $scope.img = "../img/iconset-addictive-flavour-set/png/cutting_pad.png";
    $scope.showTopToggle = false;
    $scope.ContentInit = function () {
        showpage();
    }

    $scope.SaveNewPage = function () {
        var pagename=$("#pagename").val();
        $http({
            method: 'Post',
            url: '../CS.aspx/AddNewPage',
            data: { pagename: pagename }
        }).success(function(data){
            showpage();
        })
    }
    $scope.deletePage = function (pageid) {
        $http({
            method:'Post',
            url: '../CS.aspx/DeletePage',
            data: { pageid: pageid }
        }).success(function (data) {
            alert(data.d)
            showpage();
        })
    }

    function showpage() {
        $http({
            method:'Post',
            url: "../CS.aspx/GetWebPageList",
            data:{}
        }).success(function (response) {
            var data = $.parseJSON(response.d);
            $scope.WebPageList = data;
        })

        //$.ajax({
        //    type: "POST",
        //    url: "../CS.aspx/GetWebPageList",
        //    // data: '{name: "hi" }',
        //    contentType: "application/json; charset=utf-8",
        //    dataType: "json",
        //    success: OnSuccess,
        //    failure: function (response) {
        //        alert('Error');
        //    }
        //});
        //function OnSuccess(response) {
        //    var data = $.parseJSON(response.d);
        //    $scope.WebPageList = data;

        //}
    }

})
