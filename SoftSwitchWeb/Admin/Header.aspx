<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Header.aspx.cs" Inherits="Admin_Header" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div data-ng-controller="HeaderController"  data-ng-init="GetHeaderInit()">
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
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <div class="form-group" data-ng-repeat="hd in HeaderList1">
                                <label for="exampleInputName1">{{hd.HeaderName}}</label>
                                <input type="text" class="form-control header" id="{{hd.HeaderID}}" value="{{hd.HeaderContent}}" placeholder="Enter content here">
                            </div>
                            <input type="button" value="Submit" data-ng-click="SaveHeader()" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>