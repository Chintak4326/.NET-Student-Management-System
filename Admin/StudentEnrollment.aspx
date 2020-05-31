<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="StudentEnrollment.aspx.vb" Inherits="Admin_StudentEnrollment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Student Enrollment
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


  <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Enrollment_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" ReadOnly="True" SortExpression="Enrollment_id" InsertVisible="False" />
                    <asp:BoundField DataField="Enrollment_date" HeaderText="Enrollment date" SortExpression="Enrollment_date" />
                    <asp:BoundField DataField="User_email" HeaderText="UserEmailId" SortExpression="User_email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Batch_name" HeaderText="Batch name" SortExpression="Batch_name" />
                    <asp:BoundField DataField="User_name" HeaderText="User name" SortExpression="User_name" />
                
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Student Enrollment" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Student_Enrollment] WHERE [Enrollment_id] = @Enrollment_id" 
                InsertCommand="INSERT INTO [Student_Enrollment] ([Enrollment_date],[User_email] ,[Batch_id], [User_id], [Password]) VALUES (@Enrollment_date, @User_email, @Batch_id, @User_id, @Password)" 
                SelectCommand="SELECT Student_Enrollment.Enrollment_id, Student_Enrollment.Enrollment_date, Student_Enrollment.User_id, Student_Enrollment.Password, Student_Enrollment.User_email, Student_Enrollment.Batch_id, Batch.Batch_name, User1.User_name FROM Student_Enrollment INNER JOIN Batch ON Student_Enrollment.Batch_id = Batch.Batch_id INNER JOIN User1 ON Student_Enrollment.User_id = User1.User_id" 
                UpdateCommand="UPDATE [Student_Enrollment] SET [Enrollment_date] = @Enrollment_date,[User_email] = @User_email, [Batch_id] = @Batch_id, [User_id] = @User_id, [Password] = @Password WHERE [Enrollment_id] = @Enrollment_id">
                <DeleteParameters>
                    <asp:Parameter Name="Enrollment_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Enrollment_date" DbType="Date" />
                    <asp:Parameter Name="User_email" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                    <asp:Parameter Name="User_id" Type="Decimal" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Enrollment_date" DbType="Date" />
                    <asp:Parameter Name="User_email" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                    <asp:Parameter Name="User_id" Type="Decimal" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Enrollment_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Enrollment Date</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server" TextMode="date"></asp:TextBox>
                        </div>

              <%-- <div class="form-group">
               <label>UserEmailId</label>
                  <asp:TextBox ID="txtEmail" runat="server" class="form-control"  required placeholder="" TextMode="email" ></asp:TextBox>
                   </div>--%>

     <div class="form-group">
                            <label>UserEmail-Id</label>
                            <asp:TextBox ID="TextBox3" class="form-control" required placeholder="Email Id" runat="server" TextMode="Email"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               
                        </div>
                      <%-- <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="" runat="server" TextMode="Password"></asp:TextBox>
                        </div>--%>

                        <div class="form-group">
                        <label>Password</label>
                <asp:TextBox ID="TextBox1" class="form-control"   required placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1"
    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
    ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="Red" />      
              </div>
         <div class="form-group">
                            <label>Batch</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Batch_name" DataValueField="Batch_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Batch_id], [Batch_name] FROM [Batch]"></asp:SqlDataSource>

                        </div>
                           <div class="form-group">
                            <label>User</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="User_name" DataValueField="User_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [User_name], [User_id] FROM [User1]"></asp:SqlDataSource>

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

