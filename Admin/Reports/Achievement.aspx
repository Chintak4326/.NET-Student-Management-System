<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Achievement.aspx.vb" Inherits="Admin_Achievement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Achievement
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
       <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Achievement_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Achievement_id" HeaderText="Achievement id" InsertVisible="False" ReadOnly="True" SortExpression="Achievement_id" />
                    <asp:BoundField DataField="Achievement_year" HeaderText="Achievement year" SortExpression="Achievement_year" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                           <asp:TemplateField HeaderText=" Image" SortExpression="Photo_url">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo_url")%>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~\ProductImages\" + Eval("Photo_url")%>' Width="100px" />
                        </ItemTemplate>
                        </asp:TemplateField>
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
            <asp:Button class="btn btn-primary" ID="btnAdd" runat="server" Text="Add New Achievement " />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Achievement] WHERE [Achievement_id] = @Achievement_id" InsertCommand="INSERT INTO [Achievement] ([Achievement_year], [Description], [Photo_url]) VALUES (@Achievement_year, @Description, @Photo_url)" SelectCommand="SELECT [Achievement_id], [Achievement_year], [Description], [Photo_url] FROM [Achievement]" UpdateCommand="UPDATE [Achievement] SET [Achievement_year] = @Achievement_year, [Description] = @Description, [Photo_url] = @Photo_url WHERE [Achievement_id] = @Achievement_id">
                <DeleteParameters>
                    <asp:Parameter Name="Achievement_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Achievement_year" Type="Decimal" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Photo_url" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Achievement_year" Type="Decimal" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Photo_url" Type="String" />
                    <asp:Parameter Name="Achievement_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </asp:View>
         <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                         <div class="form-group">
                            <label>Year</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <asp:TextBox ID="TextBox2" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Image URL</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required />
                            
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

