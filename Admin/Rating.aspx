<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Rating.aspx.vb" Inherits="Admin_Rating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Rating
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Rating_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Rating_id" HeaderText="Rating id" ReadOnly="True" SortExpression="Rating_id" InsertVisible="False" />
                    <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" SortExpression="Enrollment_id" />
                      <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                    <asp:BoundField DataField="Rating_date" HeaderText="Rating date" SortExpression="Rating_date" />
              <%--  <asp:TemplateField ShowHeader="False">
                        <HeaderTemplate>
                        Actions
                    </HeaderTemplate>
                    
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/edit.png" CausesValidation="False" CommandName="Select" Height="40px" Width="40px" ToolTip="Edit"/>
                            <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click" ImageUrl="~/icons/delete.png" Height="40px" Width="40px" ToolTip="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                
                </Columns>
            </asp:GridView>
            <br />
<%--            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Rating" />--%>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rating]">
            </asp:SqlDataSource>
        </asp:View>
      <%--  <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Rating</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Rating Date</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>User</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="User_name" DataValueField="User_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [User_id], [User_name] FROM [User1]"></asp:SqlDataSource>

                        </div>
                        <div class="form-group">
                            <label>Institute</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Institute_name" DataValueField="Institute_id"></asp:DropDownList>

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

        </asp:View>--%>
    </asp:MultiView>
</asp:Content>

