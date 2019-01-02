<%@ Page Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="prototype1.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 18px;
        }

        .auto-style3 {
            height: 18px;
            width: 170px;
            text-align: right;
        }

        .auto-style4 {
            width: 170px;
            text-align: right;
        }

        .auto-style5 {
            width: 170px;
            height: 20px;
            text-align: right;
        }

        .auto-style6 {
            height: 20px;
        }

        .auto-style7 {
            color: #FF0000;
        }

        .auto-style8 {
            width: 94px;
        }

        .auto-style9 {
            margin-left: 0px;
        }
    </style>

    <div style="background-color: white">

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">User Registration ID :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxID" runat="server"></asp:TextBox>
                    <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxID" CssClass="auto-style7" ErrorMessage="Your ID is required"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">User Name:</td>
                <td>
                    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                    <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxName" CssClass="auto-style7" ErrorMessage="Your Name is required"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">E-mail</td>
                <td>
                    <asp:TextBox ID="TextBoxmail" runat="server"></asp:TextBox>
                    <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxmail" CssClass="auto-style7" ErrorMessage="E-mail is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxmail" CssClass="auto-style7" ErrorMessage="You must enter  the valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPassword" CssClass="auto-style7" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxConfirmPassword" CssClass="auto-style7" ErrorMessage="Confirm password is required"></asp:RequiredFieldValidator>
                    </strong>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" CssClass="auto-style7" ErrorMessage="Both password must be same"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Faculty:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DDLFaculty" runat="server">
                        <asp:ListItem>Select Faculty</asp:ListItem>
                        <asp:ListItem>FOCS</asp:ListItem>
                        <asp:ListItem>FOAS</asp:ListItem>
                        <asp:ListItem>FOAH</asp:ListItem>
                        <asp:ListItem>FAFB</asp:ListItem>
                        <asp:ListItem>FEBE</asp:ListItem>
                    </asp:DropDownList>
                    <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DDLFaculty" CssClass="auto-style7" ErrorMessage="Select a faculty" InitialValue="Select Faculty"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" OnClick="Button1_Click" Text="Submit" Width="80px" />
                    <input id="Reset1" class="auto-style8" type="reset" value="reset" />

                </td>
            </tr>
        </table>

    </div>


    <div style="text-align:center;">

        Account Type: <asp:DropDownList ID="ddlAccType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAccType_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Lecturer</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
        </asp:DropDownList>

        <div id="LecturerRegister" runat="server">

            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser">
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" >
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>
            </asp:CreateUserWizard>

        </div>

        <div id="StudentRegister" runat="server">

            <asp:CreateUserWizard ID="CreateUserWizard2" runat="server" OnCreatedUser="CreateUserWizard2_CreatedUser1">
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" >
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>
            </asp:CreateUserWizard>

        </div>

    </div>
</asp:Content>
