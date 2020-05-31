<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Student.aspx.vb" Inherits="Admin_Reports_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
            <link href="table.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" CssClass="right" runat="server" Text="Label"></asp:Label>
     <center><h2>Register Student Report</h2>
                <br />
         <br />
         <br />
         <br />
                <asp:Button ID="Button1" runat="server" Text="Show Report"></asp:Button>

            </center>
            
            <hr />
            <div class="datagrid">
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Register Date</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Email Id</th>
                            <th>Contact No</th>
                            <th>Date Of Birth</th>
                            <th>School Name</th>
                            <th>Result</th>
                            <th>Father name</th>
                            <th>Father Qualification</th>
                             <th>Father  Occupation</th>
                             <th>Father Mobile No</th>
                            <th>Mother Name</th>
                            <th>Mother Qualification</th>
                            <th>Mother Occupation</th>
                            <th>Mother Mobile No</th>
                            <th>Gender</th>
                            <th>Area</th>
                            <th>Medium</th>
                            <th>Branch</th>
                            <th>Standard</th>
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
