<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Attendance.aspx.vb" Inherits="Admin_Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Attendance
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" 
                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" DataKeyNames="Attendance_id">
                <Columns>
                    
                    <asp:BoundField DataField="Attendance_id" HeaderText="Attendance id" ReadOnly="True" SortExpression="Attendance_id" InsertVisible="False" />
                    <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" SortExpression="Enrollment_id" />
                    <asp:BoundField DataField="Attendance_date" HeaderText="Attendance date" SortExpression="Attendance_date"/>
                    <asp:BoundField DataField="Status_name" HeaderText="Status name" SortExpression="Status_name" />
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Attendance" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Attendance] WHERE [Attendance_id] = @Attendance_id" InsertCommand="INSERT INTO [Attendance] ([Enrollment_id], [Attendance_date], [Status_id]) VALUES (@Enrollment_id, @Attendance_date, @Status_id)" SelectCommand="SELECT Attendance.Attendance_id, Attendance.Enrollment_id, Attendance.Attendance_date, Attendance.Status_id, Status.Status_name, Student_Enrollment.Enrollment_id AS Expr1 FROM Attendance INNER JOIN Status ON Attendance.Status_id = Status.Status_id INNER JOIN Student_Enrollment ON Attendance.Enrollment_id = Student_Enrollment.Enrollment_id" UpdateCommand="UPDATE [Attendance] SET [Enrollment_id] = @Enrollment_id, [Attendance_date] = @Attendance_date, [Status_id] = @Status_id WHERE [Attendance_id] = @Attendance_id">
                <DeleteParameters>
                    <asp:Parameter Name="Attendance_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Enrollment_id" Type="Decimal" />
                    <asp:Parameter Name="Attendance_date" DbType="Date" />
                    <asp:Parameter Name="Status_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Enrollment_id" Type="Decimal" />
                    <asp:Parameter Name="Attendance_date" DbType="Date" />
                    <asp:Parameter Name="Status_id" Type="Decimal" />
                    <asp:Parameter Name="Attendance_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Date</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Enrollment</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Enrollment_id" DataValueField="Enrollment_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Enrollment_id] FROM [Student_Enrollment]"></asp:SqlDataSource>

                        </div>
                         <div class="form-group">
                            <label>Status</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Status_name" DataValueField="Status_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Status_id], [Status_name] FROM [Status]"></asp:SqlDataSource>

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

