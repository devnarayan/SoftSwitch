<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Image.aspx.cs" Inherits="Admin_Image" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div data-ng-controller="ImageController">
        <div class="heading-bar">
            <div class="user-bar">
                <div id="username"></div>
                | <a href="../Account/Login.aspx">Sign out</a>
            </div>
            <span class="heading-one">
                <img ng-src="{{img}}" width="48"
                    height="48">
                {{title}}</span>

            <div id="top-switch" class="osx-switch" ng-if="showTopToggle">
                <span class="osx-switch-label osx-switch-label-active">ON</span>
                <span class="osx-switch-label osx-switch-label-inactive">OFF</span>
                <label class="switch-light switch-candy" onclick="">
                    <input type="checkbox">
                    <a></a>
                </label>
            </div>
        </div>

        <div class="content">
            <div class="container-fluid container-maverix">
                <div class="row" data-ng-init="imageInit()">
                    <div class="col-md-12">
                        <div>
                            <div class="form-group">
                                <label>Select WebPage :</label>
                <select class="form-control" name="ddlWebpage" data-ng-model="WebPageID" data-ng-change="ChangeWebPage()">
                    <option data-ng-repeat="wp in WebPageList" value="{{wp.WebPageID}}">{{wp.PageName}}</option>
                </select>
                            </div>
                            <div class="form-group">
                                <label>Select Content:</label>
                                <select class="select-large form-control" id="SelectPicName" data-ng-model="ContentID" data-ng-change="ChangeContent()">
                                    <option data-ng-repeat="wp in ImageList" value="{{wp.ContentImageID}}">{{wp.LangContent}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Select Pics:</label>
                                <input class="form-control" type="file" ng-model-instant id="fileTolandingUpload" />
                            </div>
                            <div class="form-group">
                                <label>.</label>
                                <button type="button" id="btnSave" style="display: inline; margin-top: 0px;" class="btn btn-primary" data-ng-click="UploadLandingImage()">
                                    Upload Image
                                </button>
                            </div>

                            <div class="form-group">
                                <img src="{{Pics[0].PicsURL}}" width="300" height="200" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
