<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="Admin_ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Contact Us
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="c_id" HeaderText="c_id" ReadOnly="True" SortExpression="c_id" InsertVisible="False" />
                    <asp:BoundField DataField="c_fname" HeaderText="c_fname" SortExpression="c_fname" />
                    <asp:BoundField DataField="c_lname" HeaderText="c_lname" SortExpression="c_lname" />
                    <asp:BoundField DataField="c_subject" HeaderText="c_subject" SortExpression="c_subject" />
                    <asp:BoundField DataField="c_email" HeaderText="c_email" SortExpression="c_email" />
                     <asp:BoundField DataField="c_message" HeaderText="c_message" SortExpression="c_message" />
                    
                </Columns>
            </asp:GridView>
            <br />


            <asp:Button class="btn btn-primary" ID="btnAdd" runat="server" Text="Send Mail" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Contact]" 
                DeleteCommand="DELETE FROM [Contact] WHERE [c_id] = @c_id" 
                InsertCommand="INSERT INTO [Contact] ([c_fname], [c_lname], [c_subject], [c_email], [c_message]) VALUES (@c_fname, @c_lname, @c_subject, @c_email, @c_message)" 
                UpdateCommand="UPDATE [Contact] SET [c_fname] = @c_fname, [c_lname] = @c_lname, [c_subject] = @c_subject, [c_email] = @c_email, [c_message] = @c_message WHERE [c_id] = @c_id">
                <DeleteParameters>
                    <asp:Parameter Name="c_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="c_fname" Type="String" />
                    <asp:Parameter Name="c_lname" Type="String" />
                    <asp:Parameter Name="c_subject" Type="String" />
                    <asp:Parameter Name="c_email" Type="String" />
                    <asp:Parameter Name="c_message" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="c_fname" Type="String" />
                    <asp:Parameter Name="c_lname" Type="String" />
                    <asp:Parameter Name="c_subject" Type="String" />
                    <asp:Parameter Name="c_email" Type="String" />
                    <asp:Parameter Name="c_message" Type="String" />
                    <asp:Parameter Name="c_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
         </asp:MultiView>


</asp:Content>


