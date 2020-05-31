<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Fees.aspx.vb" Inherits="Admin_Fees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Fees
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Fees_id,Expr1,Expr2" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Fees_id" HeaderText="Fees id" ReadOnly="True" SortExpression="Fees_id" InsertVisible="False" />
                    <asp:BoundField DataField="Fees_amount" HeaderText="Fees amount" SortExpression="Fees_amount" />
                    <asp:BoundField DataField="Fees_type" HeaderText="Fees type" SortExpression="Fees_type"/>
                    <asp:BoundField DataField="Fees_status" HeaderText="Fees status" SortExpression="Fees_status" />
                    <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" SortExpression="Enrollment_id" />
                    <asp:BoundField DataField="Fees_date" HeaderText="Fees date" SortExpression="Fees_date" />
                     <asp:BoundField DataField="Fees_discount" HeaderText="Fees discount" SortExpression="Fees_discount" />
                    
                     <asp:BoundField DataField="Course_name" HeaderText="Course name" SortExpression="Course_name" />
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Fees" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Fees] WHERE [Fees_id] = @Fees_id" InsertCommand="INSERT INTO [Fees] ([Fees_amount], [Fees_type], [Fees_status], [Enrollment_id], [Fees_date], [Course_id], [Fees_discount]) VALUES (@Fees_amount, @Fees_type, @Fees_status, @Enrollment_id, @Fees_date, @Course_id, @Fees_discount)" SelectCommand="SELECT Fees.Fees_id, Fees.Fees_amount, Fees.Fees_type, Fees.Fees_status, Fees.Enrollment_id, Fees.Fees_date, Fees.Course_id, Fees.Fees_discount, Course.Course_id AS Expr1, Student_Enrollment.Enrollment_id AS Expr2, Course.Course_name FROM Fees INNER JOIN Course ON Fees.Course_id = Course.Course_id INNER JOIN Student_Enrollment ON Fees.Enrollment_id = Student_Enrollment.Enrollment_id" UpdateCommand="UPDATE [Fees] SET [Fees_amount] = @Fees_amount, [Fees_type] = @Fees_type, [Fees_status] = @Fees_status, [Enrollment_id] = @Enrollment_id, [Fees_date] = @Fees_date, [Course_id] = @Course_id, [Fees_discount] = @Fees_discount WHERE [Fees_id] = @Fees_id">
                <DeleteParameters>
                    <asp:Parameter Name="Fees_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Fees_amount" Type="Decimal" />
                    <asp:Parameter Name="Fees_type" Type="String" />
                    <asp:Parameter Name="Fees_status" Type="String" />
                    <asp:Parameter Name="Enrollment_id" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="Fees_date" />
                    <asp:Parameter Name="Course_id" Type="Decimal" />
                    <asp:Parameter Name="Fees_discount" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Fees_amount" Type="Decimal" />
                    <asp:Parameter Name="Fees_type" Type="String" />
                    <asp:Parameter Name="Fees_status" Type="String" />
                    <asp:Parameter Name="Enrollment_id" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="Fees_date" />
                    <asp:Parameter Name="Course_id" Type="Decimal" />
                    <asp:Parameter Name="Fees_discount" Type="Decimal" />
                    <asp:Parameter Name="Fees_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Amount</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAreaName" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     
                             </div>
                        <div class="form-group">
                            <label>Type</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Status</label>
                            <asp:TextBox ID="TextBox2" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Date</label>
                            <asp:TextBox ID="TextBox3" class="form-control"  required placeholder="" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Discount</label>
                            <asp:TextBox ID="TextBox4" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     
                        </div>
                        <div class="form-group">
                            <label>Enrollment</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Enrollment_id" DataValueField="Enrollment_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Enrollment_id] FROM [Student_Enrollment]"></asp:SqlDataSource>

                        </div>
                         <div class="form-group">
                            <label>Course</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Course_name" DataValueField="Course_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Course_id], [Course_name] FROM [Course]"></asp:SqlDataSource>

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

