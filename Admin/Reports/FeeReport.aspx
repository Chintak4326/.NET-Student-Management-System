<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FeeReport.aspx.vb" Inherits="Admin_Reports_FeeReport" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
                <link href="table.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label4" Class="right" runat="server" Text="Label"></asp:Label>
    <center><h2>Student Fees Report</h2>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Select Category"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Enrollment_id" DataValueField="Enrollment_id"></asp:DropDownList>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Enrollment_id] FROM [Student_Enrollment]"></asp:SqlDataSource>
&nbsp;<br />
        <br />
        <asp:Label ID="Label3" runat="server" style="font-weight: 700"></asp:Label>
        <br />
        <asp:Button ID="btnShowData" runat="server" Text="Show Data" />
        <br />
       </center>
         <hr />
            <div class="datagrid">
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Amount</th>
                            <th>Type</th>
                            <th>Status</th>
                           
                            <th>Enrollment Id</th>
                            <th>Fee Date</th>
                            <th>Course</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </tbody>
                </table>
            </div>
        </div>
    
    </form>
</body>
</html>
