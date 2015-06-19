<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="AddPage.aspx.cs" Inherits="Admin_AddPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div data-ng-controller="AddPageController" data-ng-init="ContentInit()">
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
                            <div class="form-group">
                                <label for="exampleInputName1">Page Name</label>
                                <input type="text" class="form-control header" id="pagename"  placeholder="Enter Page Name here" />
                            </div>
                            <input type="button" value="Submit" data-ng-click="SaveNewPage()" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <table><thead><tr><td>Page ID</td><td>Page Name</td></tr></thead>
                            <tbody>
                                <tr data-ng-repeat="wp in WebPageList"><td>{{wp.WebPageID}}</td><td>{{wp.PageName}}</td><td><a href="#" data-ng-click="deletePage(wp.WebPageID)">Delete</a></td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>