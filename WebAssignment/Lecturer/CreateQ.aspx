<%@ Page Language="C#" MasterPageFile="/Homepage.Master" AutoEventWireup="true" CodeBehind="CreateQ.aspx.cs" Inherits="WebAssignment.Homepage" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<%--    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>--%>
    <style type="text/css">
        input[type=number] {
            width: 10%;
            border: 2px solid #aaa;
            border-radius: 4px;
            margin: 8px 0;
            outline: none;
            padding: 8px;
            box-sizing: border-box;
            transition: .3s;
        }

        input[type=text] {
            width: 100%;
            border: 2px solid #aaa;
            border-radius: 4px;
            margin: 8px 0;
            outline: none;
            padding: 8px;
            box-sizing: border-box;
            transition: .3s;
        }

            input[type=text]:focus {
                border-color: dodgerblue;
                box-shadow: 0 0 8px 0 dodgerBlue;
            }

        fieldset {
            display: block;
            margin-left: 2px;
            margin-right: 2px;
            padding-top: 0.35em;
            padding-bottom: 0.625em;
            padding-left: 0.75em;
            padding-right: 0.75em;
        }

        .btn {
            background-color: #f1f1f1;
            color: black;
            font-size: 12px;
            font-family: 'Avenir LT Std';
            padding: 10px 20px;
            border: 1px solid #aaa;
            cursor: pointer;
            border-radius: 4px;
            text-align: center;
        }

            .btn:hover {
                background-color: blue;
                color: white;
            }

        * {
            font-family: 'Avenir LT Std';
        }

        .auto-style1 {
            width: 252px;
        }

        .auto-style2 {
            width: 82%;
            height: 523px;
        }

        .auto-style3 {
            width: 376px;
        }

        .auto-style6 {
            height: 547px;
            padding:40px;
        }

        .auto-style9 {
            margin-top: 5px;
            
        }

        .auto-style10 {
            width: 252px;
            height: 301px;
        }

        .auto-style11 {
            width: 376px;
            height: 301px;
        }

        .auto-style12 {
            width: 252px;
            height: 49px;
        }

        .auto-style13 {
            width: 376px;
            height: 49px;
        }
    </style>

            <div style="text-align: center; color: white;">
            <p style="font-size: 50px;">Create MCQ</p>
        </div>
    <asp:FormView ID="fvQuestion" runat="server" DefaultMode="Insert" InsertMethod="fvQuestion_InsertItem" ItemType="WebAssignment.question" DataKeyNames="qid" OnItemCommand="fvQuestion_ItemCommand" Width="100%" >
        <InsertItemTemplate>
    <div class="auto-style6" style="background-color: white">
        <table class="auto-style2">
            <tr>
                <td class="auto-style12">
                    <asp:DropDownList ID="quizlist" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="quiz_name" OnSelectedIndexChanged="quizlist_SelectedIndexChanged" AppendDataBoundItems="true">
                    <asp:ListItem Selected="True" Value="">(none)</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT DISTINCT [quiz_name] FROM [question] ORDER BY [quiz_name]"></asp:SqlDataSource>
                </td>
                <td class="auto-style13">

                    <asp:TextBox ID="quizname" runat="server" Width="154px" Height="16px" Visible="False" Text='<%# Bind("quiz_name")%>'></asp:TextBox>

                    <asp:Button ID="Button4" runat="server" Text="New Test" OnClick="Button4_Click" />

                </td>
            </tr>
            <tr>
                <td class="auto-style1">Question Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style3">

                    <asp:TextBox ID="question" runat="server" TextMode="MultiLine" Height="16px" Width="137px" Text='<%# Bind("qdesc")%>'></asp:TextBox>

<%--                    <script>
                        CKEDITOR.replace("text");
                    </script>--%>

                    <br />

                </td>
            </tr>
            <tr>
                <td class="auto-style10">Options&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Text="Option 1"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                        <asp:TextBox ID="opt1" runat="server" Height="28px" Width="200px" CssClass="auto-style9" Text='<%# Bind("opt1")%>'></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Option 2"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                        <asp:TextBox ID="opt2" runat="server" Width="200px" Height="28px" Text='<%# Bind("opt2")%>'></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Option 3"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                        <asp:TextBox ID="opt3" runat="server" Width="200px" Height="28px" Text='<%# Bind("opt3")%>'></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Option 4"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :
                        <asp:TextBox ID="opt4" runat="server" Width="200px" Height="28px" Text='<%# Bind("opt4")%>'></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                        <br />
                    Correct Answer&nbsp;&nbsp;&nbsp;&nbsp; :
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("ans")%>' RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                        </asp:RadioButtonList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn" CommandName="Insert" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Save &amp; Add Another" CssClass="btn" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Cancel" CssClass="btn" CommandName="Cancel" />
                    <br />
                    <asp:Label ID="msg7" runat="server" Text="msg7" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>

        <br />
        <br />
    </div>
            </InsertItemTemplate>
        </asp:FormView>
</asp:Content>
