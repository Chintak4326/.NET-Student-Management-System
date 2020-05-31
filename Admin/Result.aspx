<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Result.aspx.vb" Inherits="Admin_Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Result
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Result_id,Expr1,Expr2" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Result_id" HeaderText="Result id" ReadOnly="True" SortExpression="Result_id" InsertVisible="False" />
                    <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" SortExpression="Enrollment_id" />
                     <asp:BoundField DataField="Obtain_marks" HeaderText="Obtain marks" SortExpression="Obtain_marks" />
                   
                     <asp:BoundField DataField="Exam_name" HeaderText="Exam name" SortExpression="Exam_name" />
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Result" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Result] WHERE [Result_id] = @Result_id" InsertCommand="INSERT INTO [Result] ([Enrollment_id], [Exam_timetable_id], [Obtain_marks]) VALUES (@Enrollment_id, @Exam_timetable_id, @Obtain_marks)" SelectCommand="SELECT Result.Result_id, Result.Enrollment_id, Result.Exam_timetable_id, Result.Obtain_marks, Exam_Timetable.Exam_timetable_id AS Expr1, Student_Enrollment.Enrollment_id AS Expr2, Exam_Timetable.Exam_name FROM Result INNER JOIN Exam_Timetable ON Result.Exam_timetable_id = Exam_Timetable.Exam_timetable_id INNER JOIN Student_Enrollment ON Result.Enrollment_id = Student_Enrollment.Enrollment_id" UpdateCommand="UPDATE [Result] SET [Enrollment_id] = @Enrollment_id, [Exam_timetable_id] = @Exam_timetable_id, [Obtain_marks] = @Obtain_marks WHERE [Result_id] = @Result_id">
                <DeleteParameters>
                    <asp:Parameter Name="Result_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Enrollment_id" Type="Decimal" />
                    <asp:Parameter Name="Exam_timetable_id" Type="Decimal" />
                    <asp:Parameter Name="Obtain_marks" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Enrollment_id" Type="Decimal" />
                    <asp:Parameter Name="Exam_timetable_id" Type="Decimal" />
                    <asp:Parameter Name="Obtain_marks" Type="Decimal" />
                    <asp:Parameter Name="Result_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Obtain Marks</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAreaName" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     
                        </div>
                        <div class="form-group">
                            <label>Enrollment</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Enrollment_id" DataValueField="Enrollment_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Enrollment_id] FROM [Student_Enrollment]"></asp:SqlDataSource>

                        </div>
                         <div class="form-group">
                            <label>Exam Timetable</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Exam_name" DataValueField="Exam_timetable_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Exam_timetable_id], [Exam_name] FROM [Exam_Timetable]"></asp:SqlDataSource>

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

