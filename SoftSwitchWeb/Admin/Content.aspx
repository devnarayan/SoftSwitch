<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Admin_Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div data-ng-controller="ContentController" data-ng-init="ContentInit()">
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
                <link rel="stylesheet" type="text/css" href="../lib/css/bootstrap.min.css" />
                <link rel="stylesheet" type="text/css" href="../lib/css/prettify.css" />
                <link rel="stylesheet" type="text/css" href="../src/bootstrap-wysihtml5.css" />

                <style>
                    body {
                        font-family: Verdana;
                        font-size: 11px;
                    }

                    h2 {
                        margin-bottom: 0;
                    }

                    small {
                        display: block;
                        margin-top: 40px;
                        font-size: 9px;
                    }

                        small,
                        small a {
                            color: #666;
                        }

                    a {
                        color: #000;
                        text-decoration: underline;
                        cursor: pointer;
                    }

                    #toolbar [data-wysihtml5-action] {
                        float: right;
                    }

                    #toolbar,
                    textarea {
                        width: 850px;
                        padding: 5px;
                        -webkit-box-sizing: border-box;
                        -ms-box-sizing: border-box;
                        -moz-box-sizing: border-box;
                        box-sizing: border-box;
                    }

                    textarea {
                        height: 280px;
                        border: 2px solid green;
                        font-family: Verdana;
                        font-size: 11px;
                    }

                        textarea:focus {
                            color: black;
                            border: 2px solid black;
                        }

                    .wysihtml5-command-active {
                        font-weight: bold;
                    }

                    [data-wysihtml5-dialog] {
                        margin: 5px 0 0;
                        padding: 5px;
                        border: 1px solid #666;
                    }

                    a[data-wysihtml5-command-value="red"] {
                        color: red;
                    }

                    a[data-wysihtml5-command-value="green"] {
                        color: green;
                    }

                    a[data-wysihtml5-command-value="blue"] {
                        color: blue;
                    }
                </style>
                <div class="row">
                    <div class="col-md-12">
                        <form role="form">
                            <div class="form-group">
                                <label>Select WebPage :</label>
                <select class="form-control" data-ng-model="WebPageID" data-ng-change="ChangeWebPage()">
                    <option data-ng-repeat="wp in WebPageList" value="{{wp.WebPageID}}">{{wp.PageName}}</option>
                </select>
                            </div>
                            <div class="form-group">
                                <label>Select Content:</label>
                                <select class="select-large form-control" data-ng-model="ContentID" data-ng-change="ChangeContent()">
                                    <option data-ng-repeat="wp1 in ContentList" value="{{wp1.ContentID}}">{{wp1.EnContent}}</option>
                                </select>
                            </div>
                            <div id="toolbar" style="display: none;">
                                <a data-wysihtml5-command="bold" title="CTRL+B"><b>B</b></a> |
                <a data-wysihtml5-command="italic" title="CTRL+I">italic</a> |
                <a data-wysihtml5-command="createLink">insert link</a> |
                <a data-wysihtml5-command="insertImage">insert image</a> |
                <a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1">h1</a> |
                <a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2">h2</a> |
                <a data-wysihtml5-command="insertUnorderedList">insertUnorderedList</a> |
                <a data-wysihtml5-command="insertOrderedList">insertOrderedList</a> |
                <a data-wysihtml5-command="foreColor" data-wysihtml5-command-value="red">red</a> |
                <a data-wysihtml5-command="foreColor" data-wysihtml5-command-value="green">green</a> |
                <a data-wysihtml5-command="foreColor" data-wysihtml5-command-value="blue">blue</a> |
                <a data-wysihtml5-command="insertSpeech">speech</a>
                                <a data-wysihtml5-action="change_view">switch to html view</a>

                                <div data-wysihtml5-dialog="createLink" style="display: none;">
                                    <label>
                                        Link:
                        <input data-wysihtml5-dialog-field="href" value="http://">
                                    </label>
                                    <a data-wysihtml5-dialog-action="save">OK</a>&nbsp;<a data-wysihtml5-dialog-action="cancel">Cancel</a>
                                </div>

                                <div data-wysihtml5-dialog="insertImage" style="display: none;">
                                    <label>
                                        Image:
                        <input data-wysihtml5-dialog-field="src" value="http://">
                                    </label>
                                    <label>
                                        Align:
                        <select data-wysihtml5-dialog-field="className">
                            <option value="">default</option>
                            <option value="wysiwyg-float-left">left</option>
                            <option value="wysiwyg-float-right">right</option>
                        </select>
                                    </label>
                                    <a data-wysihtml5-dialog-action="save">OK</a>&nbsp;<a data-wysihtml5-dialog-action="cancel">Cancel</a>
                                </div>

                            </div>
                            <textarea id="textarea" class="form-control" placeholder="Enter text ..."></textarea>
                            <br />
                            <input type="reset" value="Reset form!" class="btn btn-default" />
                            <input type="button" class="btn btn-primary" data-ng-click="UpdateContent()" value="Submit" />
                        </form>
                    </div>
                </div>
                <link href="../lib/css/bootstrap.min.css" rel="stylesheet" />
                <link href="../lib/css/bootstrap.min.css" rel="stylesheet" />
                <script src="../lib/js/advanced.js"></script>
                <script src="../lib/js/wysihtml5-0.3.0.js"></script>
                <script src="../lib/js/jquery-1.7.2.min.js"></script>
                <script src="../lib/js/prettify.js"></script>
                <script src="../lib/js/bootstrap.min.js"></script>
                <script src="../src/bootstrap-wysihtml5.js"></script>
                <script>
                    var editor = new wysihtml5.Editor("textarea", {
                        toolbar: "toolbar",
                        stylesheets: "css/stylesheet.css",
                        parserRules: wysihtml5ParserRules
                    });

                    //var log = document.getElementById("log");

                    //editor
                    //  .on("load", function() {
                    //    log.innerHTML += "<div>load</div>";
                    //  })
                    //  .on("focus", function() {
                    //    log.innerHTML += "<div>focus</div>";
                    //  })
                    //  .on("blur", function() {
                    //    log.innerHTML += "<div>blur</div>";
                    //  })
                    //  .on("change", function() {
                    //    log.innerHTML += "<div>change</div>";
                    //  })
                    //  .on("paste", function() {
                    //    log.innerHTML += "<div>paste</div>";
                    //  })
                    //  .on("newword:composer", function() {
                    //    log.innerHTML += "<div>newword:composer</div>";
                    //  })
                    //  .on("undo:composer", function() {
                    //    log.innerHTML += "<div>undo:composer</div>";
                    //  })
                    //  .on("redo:composer", function() {
                    //    log.innerHTML += "<div>redo:composer</div>";
                    //  });
                </script>

                <script>
                    $('.textarea').wysihtml5();
                </script>

                <script type="text/javascript" charset="utf-8">
                    $(prettyPrint);
                </script>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
