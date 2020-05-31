<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Batch.aspx.vb" Inherits="Admin_Batch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Batch
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Batch_id">
                <Columns>
                    
                    <asp:BoundField DataField="Batch_id" HeaderText="Batch id" ReadOnly="True" SortExpression="Batch_id" InsertVisible="False" />
                    <asp:BoundField DataField="Batch_name" HeaderText="Batch name" SortExpression="Batch_name" />
                    <asp:BoundField DataField="Batch_startdate" HeaderText="Batch startdate" SortExpression="Batch_startdate"/>
                    <asp:BoundField DataField="Batch_enddate" HeaderText="Batch enddate" SortExpression="Batch_enddate" />
                      <asp:BoundField DataField="Branch_name" HeaderText="Branch name" SortExpression="Branch_name" />
                    <asp:BoundField DataField="Course_name" HeaderText="Course name" SortExpression="Course_name" />
                    <asp:BoundField DataField="Subject_name" HeaderText="Subject name" SortExpression="Subject_name" />
                    <asp:BoundField DataField="Teacher_name" HeaderText="Teacher name" SortExpression="Teacher_name" />
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Batch" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Batch] WHERE [Batch_id] = @Batch_id" InsertCommand="INSERT INTO [Batch] ([Batch_name], [Batch_startdate], [Batch_enddate], [Branch_id], [Course_id], [Subject_id], [Teacher_id]) VALUES (@Batch_name, @Batch_startdate, @Batch_enddate, @Branch_id, @Course_id, @Subject_id, @Teacher_id)" SelectCommand="SELECT Batch.Batch_id, Batch.Batch_name, Batch.Batch_startdate, Batch.Batch_enddate, Batch.Branch_id, Batch.Course_id, Batch.Subject_id, Batch.Teacher_id, Branch.Branch_name, Course.Course_name, Subject.Subject_name, Teacher.Teacher_name FROM Batch INNER JOIN Branch ON Batch.Branch_id = Branch.Branch_id INNER JOIN Course ON Batch.Course_id = Course.Course_id INNER JOIN Subject ON Batch.Subject_id = Subject.Subject_id INNER JOIN Teacher ON Batch.Teacher_id = Teacher.Teacher_id" UpdateCommand="UPDATE [Batch] SET [Batch_name] = @Batch_name, [Batch_startdate] = @Batch_startdate, [Batch_enddate] = @Batch_enddate, [Branch_id] = @Branch_id, [Course_id] = @Course_id, [Subject_id] = @Subject_id, [Teacher_id] = @Teacher_id WHERE [Batch_id] = @Batch_id">
                <DeleteParameters>
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Batch_name" Type="String" />
                    <asp:Parameter Name="Batch_startdate" DbType="Date" />
                    <asp:Parameter Name="Batch_enddate" DbType="Date" />
                    <asp:Parameter Name="Branch_id" Type="Decimal" />
                    <asp:Parameter Name="Course_id" Type="Decimal" />
                    <asp:Parameter Name="Subject_id" Type="Decimal" />
                    <asp:Parameter Name="Teacher_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Batch_name" Type="String" />
                    <asp:Parameter Name="Batch_startdate" DbType="Date" />
                    <asp:Parameter Name="Batch_enddate" DbType="Date" />
                    <asp:Parameter Name="Branch_id" Type="Decimal" />
                    <asp:Parameter Name="Course_id" Type="Decimal" />
                    <asp:Parameter Name="Subject_id" Type="Decimal" />
                    <asp:Parameter Name="Teacher_id" Type="Decimal" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="txtName" class="form-control" required placeholder="Batch Name" runat="server" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Start Date</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="Start Date" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>End Date</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="End Date" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" ValidationGroup = "Date" ForeColor = "Red" runat="server" 
ControlToValidate = "txtAreaName" ControlToCompare = "TextBox1" Operator = "LessThan" Type = "Date"
ErrorMessage="End date must be Greater than Start date."></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <label>Branch</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Branch_name" DataValueField="Branch_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Branch_id], [Branch_name] FROM [Branch]"></asp:SqlDataSource>

                        </div>
                              <div class="form-group">
                            <label>Course</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Course_name" DataValueField="Course_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Course_id], [Course_name] FROM [Course]"></asp:SqlDataSource>

                        </div>
                              <div class="form-group">
                            <label>Subject</label>
                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" required DataSourceID="SqlDataSource4" DataTextField="Subject_name" DataValueField="Subject_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Subject_id], [Subject_name] FROM [Subject]"></asp:SqlDataSource>

                        </div>
                              <div class="form-group">
                            <label>Teacher</label>
                            <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" required DataSourceID="SqlDataSource5" DataTextField="Teacher_name" DataValueField="Teacher_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Teacher_id], [Teacher_name] FROM [Teacher]"></asp:SqlDataSource>

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

