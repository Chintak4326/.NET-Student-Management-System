<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Course.aspx.vb" Inherits="Admin_Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Course
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Course_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Course_id" HeaderText="Course id" ReadOnly="True" SortExpression="Course_id" InsertVisible="False" />
                    <asp:BoundField DataField="Course_name" HeaderText="Course name" SortExpression="Course_name" />
                     <asp:BoundField DataField="Yearly_fees" HeaderText="Yearly fees" SortExpression="Yearly_fees" />
                    <asp:BoundField DataField="Advance_fees" HeaderText="Advance fees" SortExpression="Advance_fees" />
               
                    
                     <asp:BoundField DataField="Monthly_fees" HeaderText="Monthly fees" SortExpression="Monthly_fees" />
                    <asp:BoundField DataField="Instalments" HeaderText="Instalments" SortExpression="Instalments" />
                     <asp:BoundField DataField="Board_name" HeaderText="Board name" SortExpression="Board_name" />
                    <asp:BoundField DataField="Medium_type" HeaderText="Medium type" SortExpression="Medium_type" />
                    <asp:BoundField DataField="Standard_name" HeaderText="Standard name" SortExpression="Standard_name" />
                    <asp:BoundField DataField="Stream_type" HeaderText="Stream type" SortExpression="Stream_type" />
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Course" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [Course_id] = @Course_id" InsertCommand="INSERT INTO [Course] ([Course_name], [Standard_id], [Medium_id], [Board_id], [Yearly_fees], [Advance_fees], [Monthly_fees], [Instalments], [Stream_id]) VALUES (@Course_name, @Standard_id, @Medium_id, @Board_id, @Yearly_fees, @Advance_fees, @Monthly_fees, @Instalments, @Stream_id)" SelectCommand="SELECT Course.Course_id, Course.Course_name, Course.Standard_id, Course.Medium_id, Course.Board_id, Course.Yearly_fees, Course.Advance_fees, Course.Monthly_fees, Course.Instalments, Course.Stream_id, Board.Board_name, Medium.Medium_type, Standard.Standard_name, Stream.Stream_type FROM Course INNER JOIN Board ON Course.Board_id = Board.Board_id INNER JOIN Medium ON Course.Medium_id = Medium.Medium_id INNER JOIN Standard ON Course.Standard_id = Standard.Standard_id INNER JOIN Stream ON Course.Stream_id = Stream.Stream_id" UpdateCommand="UPDATE [Course] SET [Course_name] = @Course_name, [Standard_id] = @Standard_id, [Medium_id] = @Medium_id, [Board_id] = @Board_id, [Yearly_fees] = @Yearly_fees, [Advance_fees] = @Advance_fees, [Monthly_fees] = @Monthly_fees, [Instalments] = @Instalments, [Stream_id] = @Stream_id WHERE [Course_id] = @Course_id">
                <DeleteParameters>
                    <asp:Parameter Name="Course_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Course_name" Type="String" />
                    <asp:Parameter Name="Standard_id" Type="Decimal" />
                    <asp:Parameter Name="Medium_id" Type="Decimal" />
                    <asp:Parameter Name="Board_id" Type="Decimal" />
                    <asp:Parameter Name="Yearly_fees" Type="Decimal" />
                    <asp:Parameter Name="Advance_fees" Type="Decimal" />
                    <asp:Parameter Name="Monthly_fees" Type="Decimal" />
                    <asp:Parameter Name="Instalments" Type="Decimal" />
                    <asp:Parameter Name="Stream_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Course_name" Type="String" />
                    <asp:Parameter Name="Standard_id" Type="Decimal" />
                    <asp:Parameter Name="Medium_id" Type="Decimal" />
                    <asp:Parameter Name="Board_id" Type="Decimal" />
                    <asp:Parameter Name="Yearly_fees" Type="Decimal" />
                    <asp:Parameter Name="Advance_fees" Type="Decimal" />
                    <asp:Parameter Name="Monthly_fees" Type="Decimal" />
                    <asp:Parameter Name="Instalments" Type="Decimal" />
                    <asp:Parameter Name="Stream_id" Type="Decimal" />
                    <asp:Parameter Name="Course_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="txtName" class="form-control" required placeholder="Course Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Yearly Fees</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="Yearly Fee" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAreaName" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     <asp:CompareValidator ID="CompareValidator1" ValidationGroup = "Date" ForeColor = "Red" runat="server" 
ControlToValidate = "txtAreaName" ControlToCompare = "TextBox1" Operator = "GreaterThan" Type = "Integer"
ErrorMessage="Yearly Fees must be Greater than Advance Fees."></asp:CompareValidator>
                       <asp:CompareValidator ID="CompareValidator2" ValidationGroup = "Date" ForeColor = "Red" runat="server" 
ControlToValidate = "txtAreaName" ControlToCompare = "TextBox2" Operator = "GreaterThan" Type = "Integer"
ErrorMessage="Yearly Fees must be Greater than Monthly Fees."></asp:CompareValidator>
                     
                              </div>
                         <div class="form-group">
                            <label>Advance Fees</label>
                           
                              <asp:TextBox ID="TextBox1" class="form-control" required placeholder="Advance Fee" runat="server"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                      <asp:CompareValidator ID="CompareValidator3" ValidationGroup = "Date" ForeColor = "Red" runat="server" 
ControlToValidate = "TextBox1" ControlToCompare = "TextBox2" Operator = "GreaterThan" Type = "Integer"
ErrorMessage="Advance Fees must be Greater than Monthly Fees."></asp:CompareValidator>
                     
                         </div>
                          <div class="form-group">
                            <label>Monthly Fees</label>
                            <asp:TextBox ID="TextBox2" class="form-control" required placeholder="Monthly Fee" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     
                          </div>
                          <div class="form-group">
                            <label>Instalments</label>
                            <asp:TextBox ID="TextBox3" class="form-control" required placeholder="Instalments" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     
                          </div>
                       
                         
                        <div class="form-group">
                            <label>Standard</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Standard_name" DataValueField="Standard_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Standard_id], [Standard_name] FROM [Standard]"></asp:SqlDataSource>

                        </div>
                        <div class="form-group">
                            <label>Medium</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Medium_type" DataValueField="Medium_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Medium_id], [Medium_type] FROM [Medium]"></asp:SqlDataSource>

                        </div>

                         <div class="form-group">
                            <label>Board</label>
                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" required DataSourceID="SqlDataSource4" DataTextField="Board_name" DataValueField="Board_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Board_id], [Board_name] FROM [Board]"></asp:SqlDataSource>

                        </div>
                         <div class="form-group">
                            <label>Stream</label>
                            <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" required DataSourceID="SqlDataSource5" DataTextField="Stream_type" DataValueField="Stream_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Stream]"></asp:SqlDataSource>

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

