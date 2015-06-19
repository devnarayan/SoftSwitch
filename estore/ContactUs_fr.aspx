<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CCEstore.ContactUs" 
MasterPageFile="main.master"
%>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
		   <div id="subheader">
		   <div class="subtag">
		<h1 class="lineone">CALL THE WHOLE WORLD<br /><span>AT THE LOWEST RATES!</span></h1>
   		<h2 class="linetwo">- No hidden fees<br />
		- Use your phone, PC or mobile<br />
		- Top-notch sound quality</h2>
                </div>	
		   
		   </div>
	<div id="contactbox">
        <div class="left">

<div class="ddfmwrap">
<p>
    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" CssClass="error" ></asp:Label>
</p>

<p class="fieldwrap"><label for="fm_name">Your Name (*)</label>
    <asp:TextBox ID="txtName" runat="server" CssClass="fmtext"></asp:TextBox>
</p>

<p class="fieldwrap"><label for="fm_email">Your Email (*)</label>

<asp:TextBox ID="txtEmail" runat="server" CssClass="fmtext"></asp:TextBox>

</p>

<p class="fieldwrap"><label for="fm_phone">Your Phone # (*)</label>

<asp:TextBox ID="txtPhone" runat="server" CssClass="fmtext"></asp:TextBox>

</p>

<p class="fieldwrap"><label for="fm_message">Message (*) </label>
<asp:TextBox ID="txtMessage" runat="server" CssClass="fmtext" TextMode="MultiLine" Height="100px"></asp:TextBox>
</p>

<div class="submit2">

    <asp:Button ID="btnSubmit" runat="server" Text="" CssClass="submitbut" OnClick="btnSubmit_Click" AutoPostback="True"  />
<!-- 
<button value="Send Email" name="form_submitted" id="submitbut" type="submit"/>
-->
</div>
</div>


        </div>
        <div class="right">
            <h3>Give us a call!</h3>
            <p>Our support team is available 24/24h.<br />
          Give us a call and we’ll be happy to answer your questions!</p>
            <p><b>Customer Service</b><br />
Telephone:   +1 123 456 789<br />
E-mail:          customer@company.com<br />
            </p>
            <p><b>Billing Department</b><br />
Telephone:   +1 123 456 789<br />
E-mail:          billing@company.com<br />
            </p>
            <p><b>Administration Department</b><br />
Telephone:   +1 123 456 789<br />
E-mail:          admin@company.com<br />
            </p> 
        </div>
    </div>

</asp:Content>