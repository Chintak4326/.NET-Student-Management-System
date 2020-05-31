<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Student.aspx.vb" Inherits="Admin_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
    .mt {
    margin-top: 25px !important;
    width: auto !important;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Student Registration
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <%--<link href="~/Admin/css/customcss.css" rel="stylesheet" type="text/css" />--%>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="User_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="User_id" HeaderText="User id" ReadOnly="True" SortExpression="User_id" InsertVisible="False" />
                    <asp:BoundField DataField="Reg_date" HeaderText="Reg date" SortExpression="Reg_date" />
                    <asp:BoundField DataField="User_name" HeaderText="User name" SortExpression="User_name"/>
                    <asp:BoundField DataField="User_address" HeaderText="User address" SortExpression="User_address" />
                    <asp:BoundField DataField="User_email_id" HeaderText="User email id" SortExpression="User_email_id" />
                    <asp:BoundField DataField="User_contact_no" HeaderText="User contact no" SortExpression="User_contact_no" />
                    <asp:BoundField DataField="User_dob" HeaderText="User dob" SortExpression="User_dob" />
                    <asp:BoundField DataField="School_name" HeaderText="School name" SortExpression="School_name" />
                    <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" />
                    <asp:BoundField DataField="Father_name" HeaderText="Father name" SortExpression="Father_name" />
                    <asp:BoundField DataField="F_qual" HeaderText="Father qualification" SortExpression="F_qual" />
                    <asp:BoundField DataField="F_occupation" HeaderText="Father occupation" SortExpression="F_occupation" />
                    <asp:BoundField DataField="F_mobile" HeaderText="Father mobile" SortExpression="F_mobile" />
                    <asp:BoundField DataField="Mother_name" HeaderText="Mother name" SortExpression="Mother_name" />
                    <asp:BoundField DataField="M_qual" HeaderText="Mother qualification" SortExpression="M_qual" />
                    <asp:BoundField DataField="M_occupation" HeaderText="Mother occupation" SortExpression="M_occupation" />
                    <asp:BoundField DataField="M_mobile" HeaderText="Mother mobile" SortExpression="M_mobile" />
                   <asp:BoundField DataField="Area_name" HeaderText="Area name" SortExpression="Area_name" />
                    <asp:BoundField DataField="Branch_name" HeaderText="Branch name" SortExpression="Branch_name" />
                    <asp:BoundField DataField="Gender_name" HeaderText="Gender name" SortExpression="Gender_name" />
                    <asp:BoundField DataField="Standard_name" HeaderText="Standard name" SortExpression="Standard_name" />
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Student" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User1] WHERE [User_id] = @User_id" InsertCommand="INSERT INTO [User1] ([Reg_date], [User_name], [User_address], [User_email_id], [User_contact_no], [User_dob], [School_name], [Result], [Father_name], [F_qual], [F_occupation], [F_mobile], [Mother_name], [M_qual], [M_occupation], [M_mobile], [Gender_id], [Area_id], [Medium_id], [Branch_id], [Standard_id]) VALUES (@Reg_date, @User_name, @User_address, @User_email_id, @User_contact_no, @User_dob, @School_name, @Result, @Father_name, @F_qual, @F_occupation, @F_mobile, @Mother_name, @M_qual, @M_occupation, @M_mobile, @Gender_id, @Area_id, @Medium_id, @Branch_id, @Standard_id)" SelectCommand="SELECT User1.User_id, User1.Reg_date, User1.User_name, User1.User_address, User1.User_email_id, User1.User_contact_no, User1.User_dob, User1.School_name, User1.Result, User1.Father_name, User1.F_qual, User1.F_occupation, User1.F_mobile, User1.Mother_name, User1.M_qual, User1.M_occupation, User1.M_mobile, User1.Gender_id, User1.Area_id, User1.Medium_id, User1.Branch_id, User1.Standard_id, Area.Area_name, Branch.Branch_name, Gender.Gender_name, Standard.Standard_name, Medium.Medium_type FROM User1 INNER JOIN Area ON User1.Area_id = Area.Area_id INNER JOIN Branch ON User1.Branch_id = Branch.Branch_id INNER JOIN Gender ON User1.Gender_id = Gender.Gender_id INNER JOIN Medium ON User1.Medium_id = Medium.Medium_id INNER JOIN Standard ON User1.Standard_id = Standard.Standard_id" UpdateCommand="UPDATE [User1] SET [Reg_date] = @Reg_date, [User_name] = @User_name, [User_address] = @User_address, [User_email_id] = @User_email_id, [User_contact_no] = @User_contact_no, [User_dob] = @User_dob, [School_name] = @School_name, [Result] = @Result, [Father_name] = @Father_name, [F_qual] = @F_qual, [F_occupation] = @F_occupation, [F_mobile] = @F_mobile, [Mother_name] = @Mother_name, [M_qual] = @M_qual, [M_occupation] = @M_occupation, [M_mobile] = @M_mobile, [Gender_id] = @Gender_id, [Area_id] = @Area_id, [Medium_id] = @Medium_id, [Branch_id] = @Branch_id, [Standard_id] = @Standard_id WHERE [User_id] = @User_id">
                <DeleteParameters>
                    <asp:Parameter Name="User_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Reg_date" DbType="Date" />
                    <asp:Parameter Name="User_name" Type="String" />
                    <asp:Parameter Name="User_address" Type="String" />
                    <asp:Parameter Name="User_email_id" Type="String" />
                    <asp:Parameter Name="User_contact_no" Type="String" />
                    <asp:Parameter DbType="Date" Name="User_dob" />
                    <asp:Parameter Name="School_name" Type="String" />
                    <asp:Parameter Name="Result" Type="String" />
                    <asp:Parameter Name="Father_name" Type="String" />
                    <asp:Parameter Name="F_qual" Type="String" />
                    <asp:Parameter Name="F_occupation" Type="String" />
                    <asp:Parameter Name="F_mobile" Type="Decimal" />
                    <asp:Parameter Name="Mother_name" Type="String" />
                    <asp:Parameter Name="M_qual" Type="String" />
                    <asp:Parameter Name="M_occupation" Type="String" />
                    <asp:Parameter Name="M_mobile" Type="Decimal" />
                    <asp:Parameter Name="Gender_id" Type="Decimal" />
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                    <asp:Parameter Name="Medium_id" Type="Decimal" />
                    <asp:Parameter Name="Branch_id" Type="Decimal" />
                    <asp:Parameter Name="Standard_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Reg_date" DbType="Date" />
                    <asp:Parameter Name="User_name" Type="String" />
                    <asp:Parameter Name="User_address" Type="String" />
                    <asp:Parameter Name="User_email_id" Type="String" />
                    <asp:Parameter Name="User_contact_no" Type="String" />
                    <asp:Parameter DbType="Date" Name="User_dob" />
                    <asp:Parameter Name="School_name" Type="String" />
                    <asp:Parameter Name="Result" Type="String" />
                    <asp:Parameter Name="Father_name" Type="String" />
                    <asp:Parameter Name="F_qual" Type="String" />
                    <asp:Parameter Name="F_occupation" Type="String" />
                    <asp:Parameter Name="F_mobile" Type="Decimal" />
                    <asp:Parameter Name="Mother_name" Type="String" />
                    <asp:Parameter Name="M_qual" Type="String" />
                    <asp:Parameter Name="M_occupation" Type="String" />
                    <asp:Parameter Name="M_mobile" Type="Decimal" />
                    <asp:Parameter Name="Gender_id" Type="Decimal" />
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                    <asp:Parameter Name="Medium_id" Type="Decimal" />
                    <asp:Parameter Name="Branch_id" Type="Decimal" />
                    <asp:Parameter Name="Standard_id" Type="Decimal" />
                    <asp:Parameter Name="User_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row" style= "width: 1000px;" >
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Registration Date</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server" TextMode="Date"></asp:TextBox>
                            <label>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox5" ControlToValidate="txtAreaName" 
                                ErrorMessage="Registration Date is Greater than Birthdate" ForeColor="Red" 
                                Operator="GreaterThan" Type="Date"></asp:CompareValidator>
                            </label>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox ID="TextBox2" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Email Id</label>
                             <asp:TextBox ID="TextBox3" class="form-control" required placeholder="" runat="server" TextMode="Email"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               
                                 </div>
                         <div class="form-group">
                            <label>Contact No</label>
                            <asp:TextBox data-parsley-type="digits" TextMode="Phone" ID="TextBox4" class="form-control" required placeholder="Mobile Number" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Mobile Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                   </div>
                         <div class="form-group">
                            <label>Date Of Birth</label>
                            <asp:TextBox ID="TextBox5" class="form-control" required placeholder="" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>School Name</label>
                            <asp:TextBox ID="TextBox6" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Result</label>
                            <asp:TextBox ID="TextBox7" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                      <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>--%>
                     
                              </div>
                         <div class="form-group">
                            <label>Father Name</label>
                            <asp:TextBox ID="TextBox8" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Father Qualification</label>
                            <asp:TextBox ID="TextBox9" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Father Occupation</label>
                            <asp:TextBox ID="TextBox10" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Father Contact No</label>
                            <asp:TextBox data-parsley-type="digits" TextMode="Phone" ID="TextBox11" class="form-control" required placeholder="Mobile Number" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="Invalid Mobile Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                       </div>
                         <div class="form-group">
                            <label>Mother Name</label>
                            <asp:TextBox ID="TextBox12" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Mother Qualification</label>
                            <asp:TextBox ID="TextBox13" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Mother Occupation</label>
                            <asp:TextBox ID="TextBox14" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Mother Contact No</label>
                            <asp:TextBox data-parsley-type="digits" TextMode="Phone" ID="TextBox15" class="form-control" required placeholder="Mobile Number" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox15" ErrorMessage="Invalid Mobile Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                          </div>
                        <div class="form-group">
                            <label>Gender</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Gender_name" DataValueField="Gender_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Gender_id], [Gender_name] FROM [Gender]"></asp:SqlDataSource>

                        </div>
                           <div class="form-group">
                            <label>Area</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Area_name" DataValueField="Area_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Area_id], [Area_name] FROM [Area]"></asp:SqlDataSource>

                        </div>
                           <div class="form-group">
                            <label>Medium</label>
                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" required DataSourceID="SqlDataSource4" DataTextField="Medium_type" DataValueField="Medium_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Medium_id], [Medium_type] FROM [Medium]"></asp:SqlDataSource>

                        </div>
                           <div class="form-group">
                            <label>Branch</label>
                            <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" required DataSourceID="SqlDataSource5" DataTextField="Branch_name" DataValueField="Branch_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Branch_id], [Branch_name] FROM [Branch]"></asp:SqlDataSource>

                        </div>
                           <div class="form-group">
                            <label>Standard</label>
                            <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" required DataSourceID="SqlDataSource6" DataTextField="Standard_name" DataValueField="Standard_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Standard_id], [Standard_name] FROM [Standard]"></asp:SqlDataSource>

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

