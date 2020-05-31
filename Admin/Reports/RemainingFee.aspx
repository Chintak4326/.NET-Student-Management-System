<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RemainingFee.aspx.vb" Inherits="Admin_Reports_RemainingFee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
        <center><h2>Remaining Fee Report</h2>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Select Enrollment ID"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Enrollment_id" DataValueField="Enrollment_id"></asp:DropDownList>

        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Enrollment_id] FROM [Student_Enrollment]"></asp:SqlDataSource>
&nbsp;<br />
        <br />
        <asp:Label ID="Label9" runat="server" style="font-weight: 700"></asp:Label>
        <br />
        <asp:Button ID="btnShowData" runat="server" Text="Calculate " />
        <br />
       </center>
         <hr />
    <center>
    <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Fees_id" DataSourceID="SqlDataSource1" >
                <Columns>
                    
                    <asp:BoundField DataField="Fees_id" HeaderText="Fees id" SortExpression="Fees_id" InsertVisible="False" ReadOnly="True"/>
                   
               
                     <asp:BoundField DataField="Fees_amount" HeaderText="Fees amount" SortExpression="Fees_amount" />
                
               
                     <asp:BoundField DataField="Fees_type" HeaderText="Fees type" SortExpression="Fees_type" />
                    <asp:BoundField DataField="Fees_status" HeaderText="Fees status" SortExpression="Fees_status" />
                    <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" SortExpression="Enrollment_id" />
                  
               
                     <asp:BoundField DataField="Fees_date" HeaderText="Fees date" SortExpression="Fees_date" />
                    <asp:BoundField DataField="Fees_discount" HeaderText="Fees discount" SortExpression="Fees_discount" />
                
               
                     <asp:BoundField DataField="Course_name" HeaderText="Course name" SortExpression="Course_name" />
                    <asp:BoundField DataField="Yearly_fees" HeaderText="Yearly fees" SortExpression="Yearly_fees" />
                
               
                     </Columns>
         <EditRowStyle BackColor="#da0c0d" BorderColor="Black" BorderStyle="Solid" />
                <EmptyDataRowStyle BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BackColor="#CC0000" BorderColor="Black" BorderStyle="Solid" ForeColor="White" />
                <PagerStyle BorderColor="Black" BorderStyle="Solid" />
                <RowStyle BorderColor="Black" BorderStyle="Solid" />
                <SortedAscendingCellStyle BorderColor="Black" BorderStyle="Solid" />
                <SortedAscendingHeaderStyle BorderColor="Black" BorderStyle="Dashed" />
                <SortedDescendingCellStyle BorderColor="Black" BorderStyle="Solid" />


            </asp:GridView>
        </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT Fees.Fees_id, Fees.Fees_amount, Fees.Fees_type, Fees.Fees_status, Fees.Enrollment_id, Fees.Fees_date, Fees.Course_id, Fees.Fees_discount, Course.Course_name, Course.Yearly_fees FROM Fees INNER JOIN Course ON Fees.Course_id = Course.Course_id WHERE (Fees.Enrollment_id = @Enrollment_id)">
        <SelectParameters>
            <asp:FormParameter FormField="DropDownList1" Name="Enrollment_id" Type="Decimal" />
        </SelectParameters>
            </asp:SqlDataSource>
     </div>

    <table style="margin-left:1200px;" >
        <tr>    

            <th>  <asp:Label ID="Label4" runat="server" Text="Total Fees  " Font-Bold="True"></asp:Label>
   </th>
            <th >   </th>
            <th>   <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
 </th>
        </tr>

        <tr>    

            <th> <asp:Label ID="Label5" runat="server" Text="Total Paid Fees  " Font-Bold="True"></asp:Label>
    </th>
             <th >   </th>
            <th><asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
    </th>
        </tr>
        <tr>        

            <th><asp:Label ID="Label6" runat="server" Text="Total Remaining Fees  " Font-Bold="True"></asp:Label>
      </th>
             <th >   </th>
            <th> <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True"></asp:Label>
      </th>
        </tr>

    </table>
    <br />
    <br />
     
    </form>
</body>
</html>
