<%@ Page Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebAssignment.Profile" %>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            background-color: white;
            padding: 20px;
            margin: 20px;
            box-shadow: 5px 8px 6px #1a62ff;
        }
    </style>


    <div class="container">
        UserID&nbsp;&nbsp;&nbsp;&nbsp; : <asp:Label id="lblUserID" runat="server" Text=""></asp:Label><br />
        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:Label id="lblName" runat="server" Text=""></asp:Label><br />
        Faculty&nbsp;&nbsp;&nbsp;&nbsp; : <asp:Label id="lblFaculty" runat="server" Text=""></asp:Label><br />
    </div>
</asp:content>
