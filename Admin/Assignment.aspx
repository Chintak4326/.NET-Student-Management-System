<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Assignment.aspx.vb" Inherits="Admin_Assignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Assignment
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Assignment_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Assignment_id" HeaderText="Assignment id" ReadOnly="True" SortExpression="Assignment_id" InsertVisible="False" />
                    <asp:BoundField DataField="Assignment_date" HeaderText="Assignment date" SortExpression="Assignment_date" />
                    <asp:BoundField DataField="Submission_date" HeaderText="Submission date" SortExpression="Submission_date"/>
                    <asp:TemplateField HeaderText="URL" SortExpression="Image_url">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Assignment_url")%>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# "~\Assignment\" + Eval("Assignment_url")%>'></asp:TextBox>
                       
                             <%--<asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~\ProductImages\" + Eval("Assignment_url")%>' Width="100px" />--%>
                        </ItemTemplate>
                    </asp:TemplateField> <asp:BoundField DataField="Batch_name" HeaderText="Batch name" SortExpression="Batch_name" />
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Assignment" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Assignment] WHERE [Assignment_id] = @Assignment_id" InsertCommand="INSERT INTO [Assignment] ([Assignment_date], [Submission_date], [Batch_id], [Assignment_url]) VALUES (@Assignment_date, @Submission_date, @Batch_id, @Assignment_url)" SelectCommand="SELECT Assignment.Assignment_id, Assignment.Assignment_date, Assignment.Submission_date, Assignment.Batch_id, Assignment.Assignment_url, Batch.Batch_name FROM Assignment INNER JOIN Batch ON Assignment.Batch_id = Batch.Batch_id" UpdateCommand="UPDATE [Assignment] SET [Assignment_date] = @Assignment_date, [Submission_date] = @Submission_date, [Batch_id] = @Batch_id, [Assignment_url] = @Assignment_url WHERE [Assignment_id] = @Assignment_id">
                <DeleteParameters>
                    <asp:Parameter Name="Assignment_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Assignment_date" DbType="Date" />
                    <asp:Parameter Name="Submission_date" DbType="Date" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                    <asp:Parameter Name="Assignment_url" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Assignment_date" DbType="Date" />
                    <asp:Parameter Name="Submission_date" DbType="Date" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                    <asp:Parameter Name="Assignment_url" Type="String" />
                    <asp:Parameter Name="Assignment_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Assignment Date</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="Assignment Date" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Submission Date</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="Submission Date" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" ValidationGroup = "Date" ForeColor = "Red" runat="server" 
ControlToValidate = "txtAreaName" ControlToCompare = "TextBox1" Operator = "LessThan" Type = "Date"
ErrorMessage="Submission date must be Greater than Assignment date."></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <label>Batch</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Batch_name" DataValueField="Batch_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [Batch_id], [Batch_name], [Batch_startdate], [Batch_enddate], [Branch_id], [Course_id], [Teacher_id], [Subject_id] FROM [Batch]" 
                                DeleteCommand="DELETE FROM [Batch] WHERE [Batch_id] = @Batch_id" 
                                InsertCommand="INSERT INTO [Batch] ([Batch_name], [Batch_startdate], [Batch_enddate], [Branch_id], [Course_id], [Teacher_id], [Subject_id]) VALUES (@Batch_name, @Batch_startdate, @Batch_enddate, @Branch_id, @Course_id, @Teacher_id, @Subject_id)" 
                                UpdateCommand="UPDATE [Batch] SET [Batch_name] = @Batch_name, [Batch_startdate] = @Batch_startdate, [Batch_enddate] = @Batch_enddate, [Branch_id] = @Branch_id, [Course_id] = @Course_id, [Teacher_id] = @Teacher_id, [Subject_id] = @Subject_id WHERE [Batch_id] = @Batch_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Batch_name" Type="String" />
                                    <asp:Parameter DbType="Date" Name="Batch_startdate" />
                                    <asp:Parameter DbType="Date" Name="Batch_enddate" />
                                    <asp:Parameter Name="Branch_id" Type="Decimal" />
                                    <asp:Parameter Name="Course_id" Type="Decimal" />
                                    <asp:Parameter Name="Teacher_id" Type="Decimal" />
                                    <asp:Parameter Name="Subject_id" Type="Decimal" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Batch_name" Type="String" />
                                    <asp:Parameter DbType="Date" Name="Batch_startdate" />
                                    <asp:Parameter DbType="Date" Name="Batch_enddate" />
                                    <asp:Parameter Name="Branch_id" Type="Decimal" />
                                    <asp:Parameter Name="Course_id" Type="Decimal" />
                                    <asp:Parameter Name="Teacher_id" Type="Decimal" />
                                    <asp:Parameter Name="Subject_id" Type="Decimal" />
                                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                        </div>
                         <div class="form-group">
                            <label>Assignment URL</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required />
                            
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

