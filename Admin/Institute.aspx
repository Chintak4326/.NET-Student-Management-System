<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Institute.aspx.vb" Inherits="Admin_Institute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Institute
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Institute_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Institute_id" HeaderText="Institute id" ReadOnly="True" SortExpression="Institute_id" InsertVisible="False" />
                    <asp:BoundField DataField="Institute_name" HeaderText="Institute name" SortExpression="Institute_name" />
                    <asp:BoundField DataField="Owner_name" HeaderText="Owner name" SortExpression="Owner_name" />
                    <asp:BoundField DataField="Owner_contact_no" HeaderText="Owner contact no" SortExpression="Owner_contact_no" />
                    <asp:BoundField DataField="Email_id" HeaderText="Email id" SortExpression="Email_id" />
                
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
            <asp:Button class="btn btn-primary" ID="btnAdd" runat="server" Text="Add New Institute" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Institute]" DeleteCommand="DELETE FROM [Institute] WHERE [Institute_id] = @Institute_id" InsertCommand="INSERT INTO [Institute] ([Institute_name], [Owner_name], [Owner_contact_no], [Email_id]) VALUES (@Institute_name, @Owner_name, @Owner_contact_no, @Email_id)" UpdateCommand="UPDATE [Institute] SET [Institute_name] = @Institute_name, [Owner_name] = @Owner_name, [Owner_contact_no] = @Owner_contact_no, [Email_id] = @Email_id WHERE [Institute_id] = @Institute_id">
                <DeleteParameters>
                    <asp:Parameter Name="Institute_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Institute_name" Type="String" />
                    <asp:Parameter Name="Owner_name" Type="String" />
                    <asp:Parameter Name="Owner_contact_no" Type="Decimal" />
                    <asp:Parameter Name="Email_id" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Institute_name" Type="String" />
                    <asp:Parameter Name="Owner_name" Type="String" />
                    <asp:Parameter Name="Owner_contact_no" Type="Decimal" />
                    <asp:Parameter Name="Email_id" Type="String" />
                    <asp:Parameter Name="Institute_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="txtCityName" class="form-control" required placeholder="Institute Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Owner Name</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="Owner Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Owner Contact no</label>
                           <asp:TextBox data-parsley-type="digits" TextMode="Phone" ID="TextBox2" 
                                class="form-control" required placeholder="Mobile Number" runat="server" 
                                MaxLength="10"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Mobile Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                     </div>
                        <div class="form-group">
                            <label>Email Id</label>
                            <asp:TextBox ID="TextBox3" class="form-control" required placeholder="Email Id" runat="server" TextMode="Email"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               
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

