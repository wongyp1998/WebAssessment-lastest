<%@ Page Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="prototype1.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; color: white;">
        <p style="font-size: 50px;">Login</p>
    </div>
    <div style="background-color: white">
        User Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Password :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Login" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" />
        <br />
        <a href="Registration.aspx">No yet Sign Up? Register now!</a>
    </div>

    <div>
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/HomepageAnon.aspx">
        </asp:Login>
    </div>
</asp:Content>
