<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="ManageHeader.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div data-ng-controller="HeaderController" data-ng-init="GetHeaderInit()">
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
                        <div class="form-group">
                            <label for="exampleInputName1">Header Label</label>
                            <input type="text" class="form-control header" id="hdlabel" placeholder="Enter Header Lable here" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputName1">Header Content</label>
                            <input type="text" class="form-control header" id="hdContent" placeholder="Enter Header Content here" />
                        </div>
                        <input type="button" value="Save" data-ng-click="SaveNewHeader()" class="btn btn-primary" />
                    </div>
                    <div class="col-md-12">
                        <div>
                            <table style="width:100%;">
                                <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>ID</th>
                                        <th>HeaderLabel</th>
                                        <th>Header Content</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-ng-repeat="hd in HeaderList1">
                                        <td>{{$index}}</td>
                                        <td>{{hd.HeaderID}}</td>
                                        <td>{{hd.HeaderName}}</td>
                                        <td>{{hd.HeaderContent}}</td>
                                        <th><a href="#" data-ng-click="DeleteHeader(hd.HeaderID)">Delete</a></th>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

