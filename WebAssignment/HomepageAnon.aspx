<%@ Page Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="HomepageAnon.aspx.cs" Inherits="Assignment.HomepageAnon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="HomepageAnon.css" type="text/css" media="screen" />


    <div id="registerTiles">
        <div class="homeRegister" style="text-align: right; border-right-color: grey; border-right-style: solid; border-right-width: 0.5px;">
            <p>
                Want to create an assessment within a few minutes?
            </p>
            <asp:Button ID="btnLecturer" runat="server" Text="Join As Lecturer" class="btnHomeRegister" />
        </div>
        <div class="homeRegister" style="text-align: left;">
            <p>
                Want to challenge yourself with the online assessment?
            </p>
            <asp:Button ID="btnStudent" runat="server" Text="Join As Student" class="btnHomeRegister" />
        </div>
    </div>

    <div id="guidelinesContainer">
        <div class="guidelines">
            <p style="font-size: large;">
                <strong>Guidelines for Creating Assessment</strong>
            </p>
            <div style="text-align:left;">
                Step 1: <a href="Login.aspx">Login</a> as a Lecturer. <a href="Registration.aspx">Register as Lecturer here</a> if you do not have an account yet.<br />
                Step 2: Hover onto the 'Assessment' on the navigation bar on top on the page and click 'Create an Assessment' as shown in the image below.<br />
                <img src="Image/guideCreate.png" style="height: 200px;" /><br />
                Step 3: Complete the assessment form to create online assessment or quiz easily!<br />
            </div>
        </div>
        <div class="guidelines">
            <p style="font-size: large;">
                <strong>Guidelines for Answering Assessment</strong>
            </p>
            <div style="text-align:left;">
                Step 1: <a href="Login.aspx">Login</a> as a Student. <a href="Registration.aspx">Register as Student here</a> if you do not have an account yet.<br />
                Step 2: Hover onto the 'Assessment' on the navigation bar on top on the page and select type of assessments as shown in the image below.<br />
                <img src="Image/guideAnswer.png" style="height: 200px;" /><br />
                Step 3: Complete the assessment and check your performance!<br />
            </div>
        </div>
    </div>

</asp:Content>
