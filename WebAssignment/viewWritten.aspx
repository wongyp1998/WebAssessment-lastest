<%@ Page Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="viewWritten.aspx.cs" Inherits="WebAssignment.viewWritten" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .box {
            height: 800px;
            width: 100%;
            background-color: white;
        }

        .grdSearchResultbreakword {
            word-wrap: break-word;
            word-break: break-all;
        }

        .grid2 {
            border-collapse: collapse;
            text-align: center
        }

            .grid2 td {
                padding: 20px 30px;
                border: 1px solid grey;
                color: black;
                font-size: 13px;
            }

            .grid2 th {
                padding: 20px;
                color: black;
                border: 1px solid grey;
                font-size: 13px;
                text-align: center;
            }

        .auto-style3 {
            resize: none;
        }

        .dropdown3 {
            font-size: 12px;
            padding: 8px 20px 8px 8px;
            background: #fff;
            border: 1px solid #aaa;
            border-radius: 4px;
            overflow: hidden;
            position: relative;
            left: 10px;
        }
    </style>



    <div style="text-align: center; color: white;">
        <p style="font-size: 50px;">
            Written Question Preview
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [wquiz_name] FROM [written] ORDER BY [wquiz_name]"></asp:SqlDataSource>
        </p>
    </div>
    <div class="box">
        <div style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [written] where [written_id] = @written_id" SelectCommand="SELECT written_id,written_desc,points,answer,remarks FROM [written] WHERE (wquiz_name = @wquiz_name)" UpdateCommand="UPDATE [written] SET [written_desc] = @written_desc, [points] = @points, [answer] = @answer,[remarks] = @remarks WHERE [written_id] = @written_id">
                <DeleteParameters>
                    <asp:Parameter Name="written_id" Type="String" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="writtendrop" Name="wquiz_name" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="written_desc" Type="String" />
                    <asp:Parameter Name="points" Type="String" />
                    <asp:Parameter Name="answer" Type="String" />
                    <asp:Parameter Name="remarks" Type="String" />
                    <asp:Parameter Name="written_id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DropDownList runat="server" ID="writtendrop" DataSourceID="SqlDataSource1" CssClass="dropdown3" AutoPostBack="true" DataTextField="wquiz_name" DataValueField="wquiz_name"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:GridView class="grid2" runat="server" AutoGenerateColumns="false" DataKeyNames="written_id" DataSourceID="SqlDataSource2" HorizontalAlign="Center" AllowPaging="true" Font-Bold="True" Font-Names="Avenir LT Std" CellPadding="4" ForeColor="#333333" Width="90%">
                <AlternatingRowStyle />
                <Columns>

                    <asp:BoundField DataField="written_id" HeaderText="ID" InsertVisible="false" SortExpression="written_id" ReadOnly="true" ItemStyle-Width="5px" />

                    <asp:TemplateField HeaderText="Description" SortExpression="written_desc" ItemStyle-CssClass="grdSearchResultbreakword" ControlStyle-Width="130px">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="Desc" Text='<%# Bind("written_desc") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox CssClass="auto-style3" runat="server" ID="desc" TextMode="MultiLine" Rows="10" Text='<%# Bind("written_desc") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="points" HeaderText="Points" SortExpression="points" ItemStyle-Width="5px" ControlStyle-Width="8px" />

                    <asp:TemplateField HeaderText="Answer" SortExpression="answer" ItemStyle-CssClass="grdSearchResultbreakword" ControlStyle-Width="130px">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="Desc" Text='<%# Bind("answer") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox CssClass="auto-style3" runat="server" ID="answer" TextMode="MultiLine" Rows="10" Text='<%# Bind("answer") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Remarks" SortExpression="remarks" ItemStyle-CssClass="grdSearchResultbreakword" ControlStyle-Width="130px">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="Desc" Text='<%# Bind("remarks") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox CssClass="auto-style3" runat="server" ID="remarks" TextMode="MultiLine" Rows="10" Text='<%# Bind("remarks") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField HeaderText="Action" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="5px">

                        <ItemStyle Width="5px"></ItemStyle>
                    </asp:CommandField>


                </Columns>

            </asp:GridView>

        </div>


    </div>
</asp:Content>

