<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FeedbackReport.aspx.vb" Inherits="Admin_Reports_FeedbackReport" %>

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
     <center><h2>Feedback Report</h2>
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
                            <th>Date</th>
                            <th>Enrollment Id</th>
                            
                            <th>Description</th>
                            
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