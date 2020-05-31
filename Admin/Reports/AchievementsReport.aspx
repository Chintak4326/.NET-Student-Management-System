<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AchievementsReport.aspx.vb" Inherits="Admin_Reports_AchievementsReport" %>

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
     <center><h2>Achievement Report</h2>
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
                            <th>Year</th>
                             <th>Description</th>
                            <th>Enrollment Id</th>
                            
                           
                            
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