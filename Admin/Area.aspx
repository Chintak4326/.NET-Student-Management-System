<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Area.aspx.vb" Inherits="Admin_Area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Area
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Area_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Area_id" HeaderText="Id" ReadOnly="True" SortExpression="Area_id" />
                    <asp:BoundField DataField="Area_name" HeaderText="Name" SortExpression="Area_name" />
                    <asp:BoundField DataField="City_name" HeaderText="City" SortExpression="City_name"/>
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
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Area" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Area] WHERE [Area_id] = @Area_id" InsertCommand="INSERT INTO [Area] ([Area_id], [Area_name], [city_id]) VALUES (@Area_id, @Area_name, @city_id)" SelectCommand="SELECT Area.Area_id, Area.Area_name, Area.city_id, City.city_name FROM Area INNER JOIN City ON Area.city_id = City.city_id" UpdateCommand="UPDATE [Area] SET [Area_name] = @Area_name, [city_id] = @city_id WHERE [Area_id] = @Area_id">
                <DeleteParameters>
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                    <asp:Parameter Name="Area_name" Type="String" />
                    <asp:Parameter Name="City_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Area_name" Type="String" />
                    <asp:Parameter Name="City_id" Type="Decimal" />
                    <asp:Parameter Name="Area_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="Area Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>City</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="City_name" DataValueField="City_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [City_id], [City_name] FROM [City]"></asp:SqlDataSource>

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

