<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateQ.aspx.cs" Inherits="WebAssignment.Homepage" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="ckeditor/ckeditor.js"></script>
    <style type="text/css">
            input[type=number]{
            width:10%;
            border:2px solid #aaa;
            border-radius:4px;
            margin:8px 0;
            outline:none;
            padding:8px;
            box-sizing : border-box;
            transition:.3s;
        }

        input[type=text],.TextArea{
            width:100%;
            border:2px solid #aaa;
            border-radius:4px;
            margin:8px 0;
            outline:none;
            padding:8px;
            box-sizing : border-box;
            transition:.3s;
        }
        input[type=text]:focus{
            border-color:dodgerblue;
            box-shadow:0 0 8px 0 dodgerBlue;
        }

        input[type=number]:focus{
            border-color:dodgerblue;
            box-shadow:0 0 8px 0 dodgerBlue;
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

        *{
            font-family:'Avenir LT Std';
        }

        .auto-style1 {
            width: 252px;
        }


        .auto-style2 {
            width: 82%;
            height: 372px;
        }
        .auto-style3 {
            width: 376px;
        }
        .auto-style6 {
            height: 422px;
            background-color:white;
        }
        .auto-style10 {
            width: 252px;
            height: 86px;
        }
        .auto-style11 {
            width: 376px;
            height: 86px;
        }
        .auto-style12 {
            width: 252px;
            height: 49px;
        }
        .auto-style13 {
            width: 376px;
            height: 49px;
        }
        .auto-style14 {
            width: 252px;
            height: 126px;
        }
        .auto-style15 {
            width: 376px;
            height: 126px;
        }
        .auto-style16 {
            width: 95%;
            height: 28px;
        }

        .auto-style17 {
            border: 2px solid #aaa;
            border-radius: 4px;
            margin: 8px 0;
            outline: none;
            padding: 8px;
            box-sizing : border-box;
            transition: .3s;
        }

    </style>
                <div style="text-align: center; color: white;">
            <p style="font-size: 50px;">Create Written Answer Question</p>
        </div>
        <div class="auto-style6">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style12">Quiz Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style13">
                        
                        <asp:TextBox ID="TextBox5" runat="server" Width="200px" Height="28px"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Question Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style3">
                        
                        <asp:TextBox ID="text" runat="server" TextMode="MultiLine" Height="16px" Width="137px" ></asp:TextBox>
                        <script>
                            CKEDITOR.replace("text");
                        </script>
                        
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Points&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :</td>
                    <td class="auto-style11">
                        <br />
                        <input id="Text1" type="number" min="1" max="10" class="auto-style16" /><br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Remarks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox6" runat="server" Width="200px" TextMode="MultiLine" Height="110px" CssClass="auto-style17"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn"/>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Save &amp; Add Another" CssClass="btn" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Cancel" CssClass="btn" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
        </asp:Content>
