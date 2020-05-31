<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="ExamTimeTable.aspx.vb" Inherits="Admin_ExamTimeTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Exam Timetable
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Exam_timetable_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Exam_timetable_id" HeaderText="Exam timetable id" ReadOnly="True" SortExpression="Exam_timetable_id" InsertVisible="False" />
                    <asp:BoundField DataField="Exam_name" HeaderText="Exam name" SortExpression="Exam_name" />
                    <asp:BoundField DataField="Exam_date" HeaderText="Exam date" SortExpression="Exam_date"/>
                    <asp:BoundField DataField="Start_time" HeaderText="Start time" SortExpression="Start_time" />
                    <asp:BoundField DataField="End_time" HeaderText="End time" SortExpression="End_time" />
                     
                    <asp:BoundField DataField="Total_marks" HeaderText="Total marks" SortExpression="Total_marks" />
                     <asp:BoundField DataField="Passing_marks" HeaderText="Passing marks" SortExpression="Passing_marks" />
                   
                    <asp:BoundField DataField="Batch_name" HeaderText="Batch name" SortExpression="Batch_name" />
                    <%--<asp:BoundField DataField="Subject_name" HeaderText="Subject name" 
                        SortExpression="Subject_name" Visible="False" />--%>
                    <asp:BoundField DataField="Standard_name" HeaderText="Standard name" SortExpression="Standard_name" />
               
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Exam Timetable" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Exam_Timetable] WHERE [Exam_timetable_id] = @Exam_timetable_id" 
                InsertCommand="INSERT INTO [Exam_Timetable] ([Exam_name], [Exam_date], [Start_time], [End_time], [Batch_id], [Total_marks], [Passing_marks],  [Standard_id]) VALUES (@Exam_name, @Exam_date, @Start_time, @End_time, @Batch_id, @Total_marks, @Passing_marks, @Standard_id)" 
                SelectCommand="SELECT Exam_Timetable.Exam_timetable_id, Exam_Timetable.Exam_name, Exam_Timetable.Exam_date, Exam_Timetable.Start_time, Exam_Timetable.End_time, Exam_Timetable.Batch_id, Exam_Timetable.Total_marks, Exam_Timetable.Passing_marks, Exam_Timetable.Standard_id, Batch.Batch_name, Standard.Standard_name FROM Exam_Timetable INNER JOIN Standard ON Exam_Timetable.Standard_id = Standard.Standard_id INNER JOIN Batch ON Exam_Timetable.Batch_id = Batch.Batch_id" 
                UpdateCommand="UPDATE [Exam_Timetable] SET [Exam_name] = @Exam_name, [Exam_date] = @Exam_date, [Start_time] = @Start_time, [End_time] = @End_time, [Batch_id] = @Batch_id, [Total_marks] = @Total_marks, [Passing_marks] = @Passing_marks, [Standard_id] = @Standard_id WHERE [Exam_timetable_id] = @Exam_timetable_id">
                <DeleteParameters>
                    <asp:Parameter Name="Exam_timetable_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Exam_name" Type="String" />
                    <asp:Parameter Name="Exam_date" DbType="Date" />
                    <asp:Parameter Name="Start_time" Type="String" />
                    <asp:Parameter Name="End_time" Type="String" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                    <asp:Parameter Name="Total_marks" Type="Decimal" />
                    <asp:Parameter Name="Passing_marks" Type="Decimal" />
                    <asp:Parameter Name="Standard_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Exam_name" Type="String" />
                    <asp:Parameter Name="Exam_date" DbType="Date" />
                    <asp:Parameter Name="Start_time" Type="String" />
                    <asp:Parameter Name="End_time" Type="String" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                    <asp:Parameter Name="Total_marks" Type="Decimal" />
                    <asp:Parameter Name="Passing_marks" Type="Decimal" />
                    <asp:Parameter Name="Standard_id" Type="Decimal" />
                    <asp:Parameter Name="Exam_timetable_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Exam Name</label>
                            <asp:TextBox ID="txtName" class="form-control" required placeholder="" runat="server" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Date</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                          <div class="form-group">
                            <label>Start Time</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="" runat="server" TextMode="Time"></asp:TextBox>
                        </div>
                          <div class="form-group">
                            <label>End Time</label>
                            <asp:TextBox ID="TextBox2" class="form-control" required placeholder="" runat="server" TextMode="Time"></asp:TextBox>
                        </div>
                          <div class="form-group">
                            <label>Total Marks</label>
                            <asp:TextBox ID="TextBox3" class="form-control" required placeholder="" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     
                          </div>
                          <div class="form-group">
                            <label>Passing Marks</label>
                            <asp:TextBox ID="TextBox4" class="form-control" required placeholder="" runat="server" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     
                          </div>
                        <div class="form-group">
                            <label>Batch</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Batch_name" DataValueField="Batch_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Batch_id], [Batch_name] FROM [Batch]"></asp:SqlDataSource>

                        </div>
                        <%--Subject Name Visible False--%>
                         <%--<div class="form-group">
                            <label>Subject</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Subject_name" DataValueField="Subject_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Subject_id], [Subject_name] FROM [Subject]"></asp:SqlDataSource>

                        </div>--%>
                         <div class="form-group">
                            <label>Standard</label>
                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" required DataSourceID="SqlDataSource4" DataTextField="Standard_name" DataValueField="Standard_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Standard_id], [Standard_name] FROM [Standard]"></asp:SqlDataSource>

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

