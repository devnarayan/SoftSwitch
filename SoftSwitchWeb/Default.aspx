<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div  data-ng-controller="ContentController" data-ng-init="GetContentListByID()">
        <input type="hidden" id="hdnfld" value="1015" />
      <div id="bodycontent">
                <div>
                </div>
                <div id="mainNav">
                </div>

                <div id="subheader">
                    <div class="subtag">
                        <div class="lineone"  data-ng-bind-html="ContentList[0].LangContent"></div>
                        <div data-ng-bind-html="ContentList[1].LangContent" ></div>
                       
                         <h2 class="linetwo"  data-ng-bind-html="ContentList[2].LangContent" >
                        </h2>
                        <div style="padding: 19px 0pt;">
                            <a href="#">
                                <img src="images_style/signup_small.png" /></a>
                        </div>
                    </div>

                </div>
                <div id="rightsubheader">
                    <a href="#">
                        <img ng-src="{{ImageList[0].PicsUrl}}" />
                        </a><br />
                    <a href="#">
                        <img ng-src="{{ImageList[1].PicsUrl}}" /></a><br />
                    <a href="#">
                        <img ng-src="{{ImageList[2].PicsUrl}}" /></a><br />
                    <div id="voiptext1" style="font-size: 1.3em; margin-left: 20px; margin-top: 15px;" data-ng-bind-html="ContentList[15].LangContent"></div>
                </div>
                <div id="box1">
                    <div id="boxheader" data-ng-bind-html="ContentList[4].LangContent"></div>
                    <div id="boxtext" data-ng-bind-html="ContentList[11].LangContent">
                        <%--From $24.99/month�
Unlimited local and long distance calling anywhere in the US, Canada, and Puerto Rico. NEW! FREE calls to select European countries! See details below.--%>
                    </div>

                    <div id="btn_buy">
                        <img src="images_style/buy_btn.gif" />
                    </div>

                </div>

                <div id="box2">
                    <div id="boxheader" data-ng-bind-html="ContentList[10].LangContent"><%--Small Business Plan--%></div>
                    <div id="boxtext"  data-ng-bind-html="ContentList[12].LangContent">
                      <%--  From $24.99/month�
Unlimited local and long distance calling anywhere in the US, Canada, and Puerto Rico. NEW! FREE calls to select European countries! See details below.--%>
                    </div>
                    <div id="btn_buy1">
                        <a href="plans.aspx?type=0">
                            <img src="images_style/buy_btn1.gif" /></a>
                    </div>
                </div>
                <div id="box3">
                    <div id="boxheader1" data-ng-bind-html="ContentList[13].LangContent"><%--Reseller Unlimited Plan--%></div>
                    <div id="boxtext1" data-ng-bind-html="ContentList[14].LangContent">
                        <%--From $24.99/month�
			Unlimited local and long distance calling anywhere in the US, Canada, and Puerto Rico. NEW! FREE calls to select 				
			European countries! See details below. --%>
                    </div>
                    <div id="btn_buy2">
                        <a href="plans.aspx?type=1">
                            <img src="images_style/buy_btn2.gif" /></a>
                    </div>
                </div>
            </div>
            <div id="voipholder">
                <div id="voip"></div>
                <div id="voiptext">
                    <div id="voiptext1" data-ng-bind-html="ContentList[5].LangContent"><%--The #1 VoIP provider.--%></div>
                    <br />
                    <div id="voiptext2"  data-ng-bind-html="ContentList[6].LangContent"><%-->One company for all your VoIP needs.--%></div>
                    <br />
                    <div id="voiptext3" data-ng-bind-html="ContentList[16].LangContent"><%--Start your service by choosing a plan that's just right for your needs - in the home, on the road, or for your small business.--%> </div>
                </div>

                <div id="rates" style="margin-right: 12px">
                    <div id="iconheader" data-ng-bind-html="ContentList[7].LangContent">
                     <%--   Did a friend refer you?--%>
                    </div>
                    <div id="iconholder">
                        <div>
                            <div style="font-size: 20px; font-weight: bold; padding: 5px 0;">
                            </div>
                            <div style="font-size: 14px; font-weight: bold; padding: 5px 0;">
                                <div  data-ng-bind-html="ContentList[8].LangContent"></div>
                                <%--Save up to $50 today.--%>
                            </div>
                            <div style="font-size: 12px; padding: 5px 0;">
                                <div  data-ng-bind-html="ContentList[9].LangContent"></div>
                              <%--  Enter their phone number below so<br />
                                both of you can get up to 2 months free!--%>
                            </div>
                            <div style="padding: 5px 0;">
                                <a href="#">
                                    <img src="images_style/signup_small.png" /></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>

