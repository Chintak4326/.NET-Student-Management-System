<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Gallery.aspx.vb" Inherits="Admin_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Gallery
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
       <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Gallery_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Gallery_id" HeaderText="Gallery id" InsertVisible="False" ReadOnly="True" SortExpression="Gallery_id" />
                   <asp:TemplateField HeaderText="Image" SortExpression="Photos">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photos")%>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~\ProductImages\" + Eval("Photos")%>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%-- <asp:BoundField DataField="Event_name" HeaderText="Event name" SortExpression="Event_name" />
                    <asp:BoundField DataField="Institute_name" HeaderText="Institute name" SortExpression="Institute_name" />
	--%>
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
            <asp:Button class="btn btn-primary" ID="btnAdd" runat="server" Text="Add New Image " />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Gallery] WHERE [Gallery_id] = @Gallery_id" InsertCommand="INSERT INTO [Gallery] ([Gallery_id], [Photos]) VALUES (@Gallery_id, @Photos)" SelectCommand="SELECT [Gallery_id], [Photos] FROM [Gallery]" UpdateCommand="UPDATE [Gallery] SET [Gallery_id] = @Gallery_id,[Photos] = @Photos WHERE [Gallery_id] = @Gallery_id"
                >
                <DeleteParameters>
                    <asp:Parameter Name="Gallery_id" Type="Decimal" />
                </DeleteParameters>
            </asp:SqlDataSource>
            </asp:View>
         <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">

                        <%--<div class="form-group">
                            <label>Event Name</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>--%>
                        <div class="form-group">
                            <label>Image URL</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required />
                            
                        </div>
                        <%--<div class="form-group">
                            <label>Institute</label>
                            <asp:DropDownList ID="txtProduct" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Institute_name" DataValueField="Institute_id"></asp:DropDownList>
                       
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Institute_id], [Institute_name] FROM [Institute]"></asp:SqlDataSource>
                       
                        </div>--%>
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

