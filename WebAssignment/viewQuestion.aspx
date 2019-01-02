<%@ Page Language="C#"  MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="viewQuestion.aspx.cs" Inherits="WebAssignment.viewQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">


        * {
            font-family: 'Avenir LT Std';
        }

        .grid {
            border-collapse: collapse;
            text-align: center
        }

            .grid td {
                padding: 20px 30px;
                border: 1px solid grey;
                color: black;
                font-size: 13px;
            }

            .grid th {
                padding: 20px;
                color: black;
                border: 1px solid grey;
                font-size: 13px;
                text-align: center;
            }


        .dropdown2 {
            font-size: 12px;
            padding: 6px 8px 6px 8px;
            background: #fff;
            border: 1px solid #aaa;
            border-radius: 4px;
            overflow: hidden;
            position: relative;
            left:10px;
        }

        .auto-style1 {
            height: 743px;
            background-color:white;
        }
        .auto-style3 {
            resize: none;
        }

        .grdSearchResultbreakword {
            word-wrap: break-word;
            word-break: break-all;
        }




    </style>

         
                <div style="text-align: center; color: white;">
            <p style="font-size: 50px;">Question Preview</p>
        </div>

            <div class="auto-style1">
                <br />

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT DISTINCT [quiz_name] FROM [question] ORDER BY [quiz_name]"></asp:SqlDataSource>


                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT qid,qdesc,opt1,opt2,opt3,opt4,ans FROM [question] WHERE (quiz_name = @quiz_name)" DeleteCommand="DELETE FROM [question] where [qid] = @qid" UpdateCommand="UPDATE [question] SET [qdesc] = @qdesc,[opt1] = @opt1,[opt2] = @opt2,[opt3] = @opt3,[opt4] = @opt4,[ans] = @ans WHERE [qid] = @qid">
                            <DeleteParameters>
                                <asp:Parameter Name="qid" Type="String" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="quiz_name" PropertyName="SelectedValue"/>
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="qdesc" Type="String" />
                                <asp:Parameter Name="opt1" Type="String" />
                                <asp:Parameter Name="opt2" Type="String" />
                                <asp:Parameter Name="opt3"  Type="String"/>
                                <asp:Parameter Name="opt4"  Type="String"/>
                                <asp:Parameter Name="ans" Type="String" />
                                <asp:Parameter Name="qid"  Type="String"/>
                            </UpdateParameters>

                        </asp:SqlDataSource>
                <div style="text-align:center">
                        Select Quiz: :<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" CssClass="dropdown2" DataSourceID="SqlDataSource1" DataTextField="quiz_name" DataValueField="quiz_name">

                        </asp:DropDownList>
                    </div>
                <br />

                <div>
                <asp:GridView class="grid" runat="server" AutoGenerateColumns="False" DataKeyNames="qid" DataSourceID="SqlDataSource2" HorizontalAlign="Center" AllowPaging="True" Font-Bold="True" Font-Names="Avenir LT Std">
                    <Columns>
                        <asp:BoundField DataField="qid" HeaderText="ID" InsertVisible="false" SortExpression="qid" ReadOnly="True" ItemStyle-Width="5px" />
<%--                        <asp:BoundField DataField="qdesc" HeaderText="Description" SortExpression="qdesc" ItemStyle-Width="270px" ItemStyle-Wrap="true" ItemStyle-CssClass="grdSearchResultbreakword" ControlStyle-Width="250px" />--%>
                        <asp:TemplateField HeaderText="Description" SortExpression="qdesc">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="Desc" Text ='<%# Bind("qdesc") %>' ></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate >
                                <asp:TextBox CssClass="auto-style3" runat="server" ID="Desc1" TextMode="MultiLine" Rows="5" Text='<%# Bind("qdesc") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="opt1" HeaderText="Option 1" SortExpression="opt1" ItemStyle-Width="80px" ItemStyle-Wrap="true" ItemStyle-CssClass="grdSearchResultbreakword" ControlStyle-Width="90px"/>
                        <asp:BoundField DataField="opt2" HeaderText="Option 2" SortExpression="opt2" ItemStyle-Width="80px" ItemStyle-Wrap="true" ItemStyle-CssClass="grdSearchResultbreakword" ControlStyle-Width="90px" />
                        <asp:BoundField DataField="opt3" HeaderText="Option 3" SortExpression="opt3" ItemStyle-Width="80px"  ItemStyle-Wrap="true" ItemStyle-CssClass="grdSearchResultbreakword" ControlStyle-Width="90px"/> 
                        <asp:BoundField DataField="opt4" HeaderText="Option 4" SortExpression="opt4" ItemStyle-Width="80px" ItemStyle-Wrap="true" ItemStyle-CssClass="grdSearchResultbreakword" ControlStyle-Width="90px"/>
                        <asp:BoundField DataField="ans" HeaderText="Correct Answer" SortExpression="ans" ItemStyle-Width="5px" ControlStyle-Width="30px"  />
                        <asp:CommandField HeaderText="Action" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="5px"  />
                      
                    </Columns>
                </asp:GridView>
                </div>
            </div>

</asp:Content>