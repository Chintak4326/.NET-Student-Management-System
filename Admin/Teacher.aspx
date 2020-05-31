<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Teacher.aspx.vb" Inherits="Admin_Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Teacher
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Teacher_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Teacher_id" HeaderText="Teacher id" ReadOnly="True" SortExpression="Teacher_id" InsertVisible="False" />
                    <asp:BoundField DataField="Teacher_name" HeaderText="Teacher name" SortExpression="Teacher_name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"/>
                    <asp:BoundField DataField="Contact_no" HeaderText="Contact no" SortExpression="Contact_no" />
                    <asp:BoundField DataField="Email_id" HeaderText="Email id" SortExpression="Email_id" />
                    <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
               
                     <asp:BoundField DataField="Area_name" HeaderText="Area name" 
                        SortExpression="Area_name" />

                        
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Teacher" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Teacher] WHERE [Teacher_id] = @Teacher_id" 
                InsertCommand="INSERT INTO [Teacher] ([Teacher_name], [Address], [Contact_no], [Email_id], [Qualification], [Area_id]) VALUES (@Teacher_name, @Address, @Contact_no, @Email_id, @Qualification, @Area_id)" 
                SelectCommand="SELECT Teacher.Teacher_id, Teacher.Teacher_name, Teacher.Address, Teacher.Contact_no, Teacher.Email_id, Teacher.Qualification, Teacher.Area_id, Area.Area_name FROM Teacher INNER JOIN Area ON Teacher.Area_id = Area.Area_id INNER JOIN Area AS Area_1 ON Teacher.Area_id = Area_1.Area_id " 
                UpdateCommand="UPDATE [Teacher] SET [Teacher_name] = @Teacher_name, [Address] = @Address, [Contact_no] = @Contact_no, [Email_id] = @Email_id, [Qualification] = @Qualification, [Area_id] = @Area_id WHERE [Teacher_id] = @Teacher_id">
                <DeleteParameters>
                    <asp:Parameter Name="Teacher_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Teacher_name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Contact_no" Type="Decimal" />
                    <asp:Parameter Name="Email_id" Type="String" />
                    <asp:Parameter Name="Qualification" Type="String" />
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Teacher_name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Contact_no" Type="Decimal" />
                    <asp:Parameter Name="Email_id" Type="String" />
                    <asp:Parameter Name="Qualification" Type="String" />
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                    <asp:Parameter Name="Teacher_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="Teacher Name" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="Address" runat="server"></asp:TextBox>
                        </div>
                          <div class="form-group">
                            <label>Contact No</label>
                            <asp:TextBox data-parsley-type="digits" TextMode="Phone" ID="TextBox2" class="form-control" required placeholder="Mobile Number" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Mobile Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                   </div>
                          <div class="form-group">
                            <label>Email Id</label>
                            <asp:TextBox ID="TextBox3" class="form-control" required placeholder="Email Id" runat="server" TextMode=Email></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               
                          </div>
                          <div class="form-group">
                            <label>Qualification</label>
                            <asp:TextBox ID="TextBox4" class="form-control" required placeholder="Qualification" runat="server"></asp:TextBox>
                        </div>
                         
                        <div class="form-group">
                            <label>Area</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Area_name" DataValueField="Area_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Area_id], [Area_name] FROM [Area]"></asp:SqlDataSource>

                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Button ID="btnInsert" runat="server" Text="Insert" class="btn btn-primary" />
                                <asp:Button ID="btnCancel" formnovalidate="formnovalidate" runat="server" Text="Cancel" class="btn btn-default" CausesValidation="False" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </asp:View>
    </asp:MultiView>
</asp:Content>

