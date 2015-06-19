<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucLanguageBar.ascx.cs" Inherits="CCEstore.wucLanguageBar" %>

<WebCtlIpsmarx:RadTabStrip ID="RadTabStrip1" runat="server" OnTabClick="RadTabStrip1_TabClick" SelectedIndex="3"  EnableEmbeddedSkins=false skin="Test">
    <Tabs>
        <WebCtlIpsmarx:RadTab runat="server" Text="简体中文" Value="gb">
        </WebCtlIpsmarx:RadTab>
        <WebCtlIpsmarx:RadTab runat="server" Text="繁體中文" Value="bg">
        </WebCtlIpsmarx:RadTab>
        <WebCtlIpsmarx:RadTab runat="server" Text="English" Selected="True" Value="en">
        </WebCtlIpsmarx:RadTab>
        <WebCtlIpsmarx:RadTab runat="server" Text="Fran&#231;ais" Value="fr">
        </WebCtlIpsmarx:RadTab>
        <WebCtlIpsmarx:RadTab runat="server" Text="Espa&#241;ol" Value="sp">
        </WebCtlIpsmarx:RadTab>
    </Tabs>
</WebCtlIpsmarx:RadTabStrip>
