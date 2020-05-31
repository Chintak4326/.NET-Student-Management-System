<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Medium.aspx.vb" Inherits="Admin_Medium" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Medium
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Medium_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Medium_id" HeaderText="Medium id" ReadOnly="True" SortExpression="Medium_id" InsertVisible="False" />
                    <asp:BoundField DataField="Medium_type" HeaderText="Medium type" SortExpression="Medium_type" />
                    <asp:TemplateField ShowHeader="False">
                       <HeaderTemplate>
                        Actions
                    </HeaderTemplate>
                    
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/edit.png" CausesValidation="False" CommandName="Select" Height="40px" Width="40px" ToolTip="Edit"/>
                            <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click" ImageUrl="~/icons/delete.png" Height="40px" Width="40px" ToolTip="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                       </Columns>
            </asp:GridView>
            <br />
            <asp:Button class="btn btn-primary" ID="btnAdd" runat="server" Text="Add New Medium" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Medium]" DeleteCommand="DELETE FROM [Medium] WHERE [Medium_id] = @Medium_id" InsertCommand="INSERT INTO [Medium] ([Medium_type]) VALUES (@Medium_type)" UpdateCommand="UPDATE [Medium] SET [Medium_type] = @Medium_type WHERE [Medium_id] = @Medium_id">
                <DeleteParameters>
                    <asp:Parameter Name="Medium_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Medium_type" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Medium_type" Type="String" />
                    <asp:Parameter Name="Medium_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="txtCityName" class="form-control" required placeholder="Medium Name" runat="server"></asp:TextBox>
                        </div>
                        
                        <div class="form-group">
                            <div>
                                <asp:Button ID="btnInsert" runat="server" Text="Insert" class="btn btn-primary" />
                                <asp:Button ID="btnCancel" formnovalidate="formnovalidate" runat="server" Text="Cancel" class="btn btn-default" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </asp:View>
    </asp:MultiView>
</asp:Content>

