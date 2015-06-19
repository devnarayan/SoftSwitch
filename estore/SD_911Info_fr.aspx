<%@ Page Language="C#" AutoEventWireup="true" Codebehind="SD_911Info.aspx.cs" Inherits="CCEstore.SD_911Info"
    MasterPageFile="mainService.master" meta:resourcekey="PageResource1" %>

<script runat="server">
    //String companyName = "";//SipKernel.DB5E.Distributor.GetCompanyName(PayCentral.DB5E.Customer.getDistributorID());
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">


      
  
          <table width="680px">
        <tr>
            <td>
                <asp:Label id="lblError" runat="server" CssClass="error" ForeColor="Red" 
                    Font-Bold="True" meta:resourcekey="lblErrorResource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="heading">
                <asp:Label ID="Label1" runat="server" Text="Edit 911 Information" 
                    meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#ffffff">
                <font face="Verdana">
                    <br>
                    <small>
                        
                        <p><%Response.Write(companyName);%> La composition 911 est diff&eacute;rente du 911 traditionnel, mais c'est un moyen fiable et s&eacute;curitaire d'appeler les secours selon o&ugrave; vous &ecirc;tes situ&eacute;s.</p>
                                                                                    <p>La plupart de nos clients (mis &agrave; part les clients de WiFi, de SoftPhone et de V-Phone) ont acc&egrave;s soit au service 911 de base ou 911 avanc&eacute; (E911). Avec le service E911, votre num&eacute;ro de t&eacute;l&eacute;phone ainsi que votre adresse seront envoy&eacute;s simultan&eacute;ment au centre d'urgence le plus pr&egrave;s de chez vous. C'est en ayant acc&egrave;s &agrave; votre information que les op&eacute;rateurs du centre d'appel pourront vous envoyer l'aide n&eacute;cessaire et vous rappeler au besoin. Les clients demeurant &agrave; un endroit o&ugrave; le centre d'urgence n'utilise pas ce proc&eacute;d&eacute;, c'est-&agrave;-dire n'ayant pas acc&egrave;s ni &agrave; l'adresse ni au num&eacute;ro de t&eacute;l&eacute;phone de l'appelant, ont le service 911 de base. Avec ce service, l'op&eacute;rateur du centre local r&eacute;pondant &agrave; l'appel vous demandera votre num&eacute;ro de t&eacute;l&eacute;phone et votre adresse exacte; vous devez donc vous pr&eacute;parer &agrave; cette &eacute;ventualit&eacute;. L'op&eacute;rateur pourrait &ecirc;tre dans l'impossibilit&eacute; de vous rappeler si l'appel n'a pas &eacute;t&eacute; compl&eacute;t&eacute;, s'il n'a pas &eacute;t&eacute; transf&eacute;r&eacute;, s'il a &eacute;t&eacute; rompu ou encore s'il a &eacute;t&eacute; d&eacute;connect&eacute; avant que vous lui ayez donn&eacute; votre num&eacute;ro de t&eacute;l&eacute;phone. De plus, les centres d'urgences locaux recevant l'information du client transf&eacute;reront le service de base du client pour le service E911 sans que ce dernier ne s'en rende compte. </p>
                                                                                    <p>Certains clients n'ont acc&egrave;s ni au service 911 de base, ni au service E911. Si vous n'avez aucun de ces deux services, votre appel sera envoy&eacute; au centre d'appel d'urgence national. Un sp&eacute;cialiste du centre d'appel d'urgence vous demandera votre nom, num&eacute;ro de t&eacute;l&eacute;phone et emplacement pour ensuite contacter le centre d'urgence le plus pr&egrave;s du client afin de lui envoyer l'aide n&eacute;cessaire. Les appels 911 seront envoy&eacute;s au centre d'appel d'urgence national si, par exemple, on &eacute;prouve un probl&egrave;me en v&eacute;rifiant l'adresse du client, si le client poss&egrave;de un emplacement international ou s'il est situ&eacute; dans un endroit o&ugrave; le r&eacute;seau 911 de la ligne terrestre n'est pas disponible. Votre appel sera &eacute;galement envoy&eacute; au centre d'appel d'urgence national si vous utilisez un t&eacute;l&eacute;phone WiFi, un Softphone ou un V-Phone &agrave; cause de la portabilit&eacute; de ce genre de p&eacute;riph&eacute;riques. Le personnel d'urgence ne re&ccedil;oit ni votre num&eacute;ro de t&eacute;l&eacute;phone ni votre emplacement actuel lorsque votre appel 911 est transf&eacute;r&eacute; au centre d'appel d'urgence national.</p>
                                                                                    <p>Vous devez vous enregistrer sous l'adresse &agrave; laquelle vous utiliserez le service t&eacute;l&eacute;phonique de chaque ligne t&eacute;l&eacute;phonique. Notez &eacute;galement que si vous d&eacute;m&eacute;nager votre p&eacute;riph&eacute;rique &agrave; une autre adresse, vous devez enregistrer votre nouvelle adresse. En cas contraire, tout appel 911 que vous ferez pourrait &ecirc;tre envoyer au centre d'urgence pr&egrave;s de votre ancienne adresse. Vous inscrirez votre adresse initiale lorsque vous vous inscrirez au service. Ce proc&eacute;d&eacute; peut prendre plusieurs heures. Vous recevrez un email de confirmation de l'enregistrement de l'adresse ou du changement d'adresse une fois que la Num&eacute;rotation 911 sera activ&eacute;e. Notez bien que peu importe l'adresse enregistr&eacute;e pour un t&eacute;l&eacute;phone WiFi, un SoftPhone ou un V-Phone, tous les appels d'urgence effectu&eacute;s avec ces p&eacute;riph&eacute;riques seront envoy&eacute;s au centre d'appel d'urgence national. Souvenez-vous &eacute;galement que notre service Num&eacute;rotation 911 ne fonctionnera pas dans le cas &eacute;ventuel o&ugrave; votre large bande, votre ISP ou votre service t&eacute;l&eacute;phonique est coup&eacute;. </p>                                                                                    <font face="Verdana"><br />
                                                                                        <br />
                        <br />
                        <font color="#ff0000">Je confirme avoir lu et compris le fonctionnement de la Composition 911.  </font></small></font>
            </td>
        </tr>
        <tr>
            <td>
            <asp:Label ID="lblDID" Text = "Select DID" runat="server" 
                    meta:resourcekey="lblDIDResource1"></asp:Label>
            
            &nbsp;<WebCtlIpsmarx:RadComboBox ID="ddlDID" runat="server" Width="171px" 
                    meta:resourcekey="ddlServicesResource1" Visible="False">
                                    
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                    
                                </WebCtlIpsmarx:RadComboBox>
            
            </td>
        </tr>
        <tr>
            <td>
                <div align="center">
                    <asp:Button ID="btnPay" runat="server" CssClass="Button" Text="Activate Service /Apply New Change"
                        Width="234px" OnClick="btnPay_Click" meta:resourcekey="btnPayResource1"></asp:Button>
                </div>
            </td>
        </tr>
    </table>
      
          


</asp:Content>
