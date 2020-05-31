<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Branch.aspx.vb" Inherits="Admin_Branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Branch
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" 
                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                DataKeyNames="Branch_id" DataSourceID="SqlDataSource1" >
                <Columns>
                    
                    <asp:BoundField DataField="Branch_id" HeaderText="Branch id" ReadOnly="True" SortExpression="Branch_id" InsertVisible="False" />
                    <asp:BoundField DataField="Branch_name" HeaderText="Branch name" SortExpression="Branch_name" />
                    <asp:BoundField DataField="Receptionist_name" HeaderText="Receptionist name" SortExpression="Receptionist_name"/>
                    <asp:BoundField DataField="Contact_no" HeaderText="Contact no" SortExpression="Contact_no" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
               
                    
                    
                 <asp:BoundField DataField="Area_name" HeaderText="Area name" 
                        SortExpression="Area_name" />
                    <asp:BoundField DataField="Institute_name" HeaderText="Institute name" 
                        SortExpression="Institute_name" />
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Branch" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Branch] WHERE [Branch_id] = @Branch_id" 
                InsertCommand="INSERT INTO [Branch] ([Branch_name], [Receptionist_name], [Contact_no], [Address], [Area_id], [Institute_id]) VALUES (@Branch_name, @Receptionist_name, @Contact_no, @Address, @Area_id, @Institute_id)" 
                SelectCommand="SELECT Branch.Branch_id, Branch.Branch_name, Branch.Receptionist_name, Branch.Contact_no, Branch.Address, Branch.Area_id, Branch.Institute_id, Area.Area_name, Institute.Institute_name FROM Branch INNER JOIN Area ON Branch.Area_id = Area.Area_id INNER JOIN Institute ON Branch.Institute_id = Institute.Institute_id" 
                UpdateCommand="UPDATE [Branch] SET [Branch_name] = @Branch_name, [Receptionist_name] = @Receptionist_name, [Contact_no] = @Contact_no, [Address] = @Address, [Area_id] = @Area_id, [Institute_id] = @Institute_id WHERE [Branch_id] = @Branch_id">
                <DeleteParameters>
                    <asp:Parameter Name="Branch_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Branch_name" Type="String" />
                    <asp:Parameter Name="Receptionist_name" Type="String" />
                    <asp:Parameter Name="Contact_no" Type="Decimal" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                    <asp:Parameter Name="Institute_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Branch_name" Type="String" />
                    <asp:Parameter Name="Receptionist_name" Type="String" />
                    <asp:Parameter Name="Contact_no" Type="Decimal" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                    <asp:Parameter Name="Institute_id" Type="Decimal" />
                    <asp:Parameter Name="Branch_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required 
                                placeholder="Branch Name" runat="server" Width="1041px" ></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Receptionist name</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required 
                                 placeholder="Receptionist Name" runat="server" Width="1041px"></asp:TextBox>
                        </div>
                          <div class="form-group">
                            <label>Contact No</label>
                            <asp:TextBox data-parsley-type="digits" TextMode="Phone" ID="TextBox2" 
                                  class="form-control" required placeholder="Mobile Number" runat="server" 
                                  MaxLength="10" Width="1040px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Mobile Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                     
                          </div>
                          <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox ID="TextBox3" class="form-control" required placeholder="Address" 
                                  runat="server" Width="1040px"></asp:TextBox>
                        </div>
                       
                         
                        <div class="form-group">
                            <label>Area</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required 
                                DataSourceID="SqlDataSource2" DataTextField="Area_name" 
                                DataValueField="Area_id" Width="1045px"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Area_id], [Area_name] FROM [Area]"></asp:SqlDataSource>

                        </div>
                        <div class="form-group">
                            <label>Institute</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
                                required DataSourceID="SqlDataSource3" DataTextField="Institute_name" 
                                DataValueField="Institute_id" Width="1043px"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Institute_id], [Institute_name] FROM [Institute]"></asp:SqlDataSource>

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

