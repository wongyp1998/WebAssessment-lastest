<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowQuiz.aspx.cs" Inherits="WebAssignment.ShowQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">  
        <title></title>  
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>  
        <style type="text/css">
            .auto-style1 {
                float: left;
                height: 20px;
            }
            .auto-style2 {
                float: right;
                height: 20px;
            }
            .correct{
                color:forestgreen;
            }
            .status{
                color:red;
            }
        </style>
    </head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManger" runat="server"></asp:ScriptManager>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT qid,quiz_name,qdesc,opt1,opt2,opt3,opt4,ans FROM [question] WHERE (quiz_name = @quiz_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="getquiz" Name="quiz_name" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="getquiz" runat="server" Visible="False"></asp:TextBox>
        <div>
            <asp:UpdatePanel ID="updPanel" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td class="auto-style1">
                                            <b><span id="timerText"></span></span><span id="spnthankyou"></span></b>

                                        </td>
                                        <td>
                                            <b style="text-align: center">
                                                <asp:Label runat="server" ID="Access"></asp:Label></b>
                                        </td>
                                        <td class="auto-style2">
                                            <b><asp:Label runat="server" ID="result"></asp:Label></b>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="grdquestions" DataSourceID="SqlDataSource1" runat="server" AutoGenerateColumns="False" OnRowDataBound="grdquestions_RowDataBound" DataKeyNames="qid" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate><asp:Label runat="server" ID="Label1"></asp:Label></HeaderTemplate>
                                            <ItemTemplate>
                                                <table class="tableclass" id='<%#Eval("qid") %>'>
                                                    <tr>
                                                        <td>
                                                            <b>Question <asp:Label ID="sequence" Text="hi" runat="server"></asp:Label> -: <%#Eval("qdesc") %></b>  
                                                                <asp:HiddenField ID="hdnquestionId" runat="server" />  
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <table class="tblOptions">
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:RadioButton ID="rdOption1" runat="server" Text='<%#Eval("opt1") %>' GroupName='<%#Eval("qid") %>' /> 
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:RadioButton ID="rdOption2" runat="server" Text='<%#Eval("opt2") %>' GroupName='<%#Eval("qid") %>' />  
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:RadioButton ID="rdOption3" runat="server" Text='<%#Eval("opt3") %>' GroupName='<%#Eval("qid") %>' />  
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:RadioButton ID="rdOption4" runat="server" Text='<%#Eval("opt4") %>' GroupName='<%#Eval("qid") %>' /> 
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="lbquestionstatus" CssClass="status" runat="server" Visible="False"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="correctAnswer">  
                                                                                        <asp:Label runat="server" ID="lbCorrect" CssClass="correct"></asp:Label><asp:Label ID="lbAnswer" runat="server" Text= '<%#Eval("ans") %>' Visible="False"></asp:Label>
                                                                                </td>
                                                                            </tr>
<%--                                                                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please select an answer" Display="Dynamic" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>--%>

                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>

                                                </table>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>

                            </td>
                        </tr>
                        <tr>
                            <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" />
                              
                                </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnBack" runat="server" Visible="false" Text="Back To Home Page" OnClick="btnBack_Click" />

                            </td>
                        </tr>

                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <script> 


                    //Set the number of minutes you need  
                    var mins = 10;  
                    var secs = mins * 60;  
                    var currentSeconds = 0;  
                    var currentMinutes = 0;  
                    var ourtimer;  
  
                    function StartCountDown() {  
                        ourtimer = setTimeout(Decrement, 1000);  
                    }  
  
                    function EndCountDown() {  
                        clearTimeout(ourtimer);  
                    }
                
                    $(document).ready(function() {  
                        StartCountDown();  
                    }); //start the countdown  
                    function Decrement() {  
                        currentMinutes = Math.floor(secs / 60);  
                        currentSeconds = secs % 60;  
                        if (currentSeconds <= 9) currentSeconds = "0" + currentSeconds;  
                        secs--;  
                        document.getElementById("timerText").innerHTML = "Time Remaining " + currentMinutes + ":" + currentSeconds;  
                        if (secs !== -1) {  
                            setTimeout('Decrement()', 1000);  
                        } else {
                            
                            window.location.href = "SelectQuiz.aspx?timeout=1"  
                          
                        }  
                }

                function stopTimer(){
                  EndCountDown();
                  $("#timerText").css("display", "none");
                  $("#spnthankyou").append("Thank You for submitting your test.")
                            
                }





   
  
  

            </script>  
        </div>
    </form>
</body>
</html>
