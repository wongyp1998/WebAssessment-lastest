<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectQuiz.aspx.cs" Inherits="WebAssignment.SelectQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .drop {
            text-align:center;
        }
        .auto-style1 {
            height: 371px;
        }
        .auto-style2 {
            height: 127px;
            text-align:center;
            margin-top: 154px;
        }
    </style>
</head>
<body style="height: 371px">
    <form id="form1" runat="server" class="auto-style1">
        <div class="auto-style2">
            <asp:DropDownList ID="drop1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="quiz_name"  DataValueField="quiz_name" OnSelectedIndexChanged="drop1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Start Now" PostBackUrl="~/ShowQuiz.aspx" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT DISTINCT [quiz_name] FROM [question] ORDER BY [quiz_name]"></asp:SqlDataSource>
        </div>
        <div style="text-align:center">
            <asp:Label ID="lbstatus" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
