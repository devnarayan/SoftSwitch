<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <!-- Begin Top header -->
    <div id="bodycontent">
        <div>
        </div>
        <div id="mainNav">
        </div>

        <div id="subheader">
            <div class="subtag">
                <h1 class="lineone">CALL THE WHOLE WORLD<br />
                    <span>AT THE LOWEST RATES!</span></h1>
                <h2 class="linetwo">- No hidden fees<br />
                    - Use your phone, PC or mobile<br />
                    - Top-notch sound quality</h2>
            </div>

        </div>
        <div id="contactbox">
            <div class="left">

                <div class="ddfmwrap">
                    <p>
                        <span id="ctl00_cphMain_lblError" class="error" style="color: Red;"></span>
                    </p>

                    <p class="fieldwrap">
                        <label for="fm_name">Your Name (*)</label>
                        <input name="ctl00$cphMain$txtName" type="text" id="ctl00_cphMain_txtName" class="fmtext" />
                    </p>

                    <p class="fieldwrap">
                        <label for="fm_email">Your Email (*)</label>

                        <input name="ctl00$cphMain$txtEmail" type="text" id="ctl00_cphMain_txtEmail" class="fmtext" />

                    </p>

                    <p class="fieldwrap">
                        <label for="fm_phone">Your Phone # (*)</label>

                        <input name="ctl00$cphMain$txtPhone" type="text" id="ctl00_cphMain_txtPhone" class="fmtext" />

                    </p>

                    <p class="fieldwrap">
                        <label for="fm_message">Message (*) </label>
                        <textarea name="ctl00$cphMain$txtMessage" rows="2" cols="20" id="ctl00_cphMain_txtMessage" class="fmtext" style="height: 100px;">
</textarea>
                    </p>
                    <!-- Helly June 24, 2014 Ticket Number 37551
     Reason: to add captcha functionality
 -->
                    <p class="fieldwrap">


                        <table cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td>
                                    <img src="JpegImage.aspx">
                                </td>
                                <td nowrap>&nbsp;&nbsp;&nbsp;</td>
                                <td class="fontnormal">
                                    <span id="ctl00_cphMain_CaptchaWebControl1_Label1">Please enter the code:</span><br>
                                    <input name="ctl00$cphMain$CaptchaWebControl1$CodeNumberTextBox" type="text" id="ctl00_cphMain_CaptchaWebControl1_CodeNumberTextBox" class="textbox" style="width: 50px;" />
                                </td>
                            </tr>
                        </table>
                    </p>
                    <!-- End Helly June 24, 2014 Ticket Number 37551
     
 -->

                    <div class="submit2">
                        <input type="submit" name="ctl00$cphMain$btnSubmit" value="" id="ctl00_cphMain_btnSubmit" class="submitbut" autopostback="True" />
                        <!-- 
<button value="Send Email" name="form_submitted" id="submitbut" type="submit"/>
-->
                    </div>
                </div>


            </div>
            <div class="right">
                <h3>Give us a call!</h3>
                <p>
                    Our support team is available 24/24h.<br />
                    Give us a call and we�ll be happy to answer your questions!
                </p>
                <p>
                    <b>Customer Service</b><br />
                    Telephone:   +1 123 456 789<br />
                    E-mail:          customer@company.com<br />
                </p>
                <p>
                    <b>Billing Department</b><br />
                    Telephone:   +1 123 456 789<br />
                    E-mail:          billing@company.com<br />
                </p>
                <p>
                    <b>Administration Department</b><br />
                    Telephone:   +1 123 456 789<br />
                    E-mail:          admin@company.com<br />
                </p>
            </div>
        </div>

    </div>
</asp:Content>