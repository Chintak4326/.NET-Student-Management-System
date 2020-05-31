<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="feesstatus.aspx.vb" Inherits="Student_feesstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- banner -->
	<div class="banner-agile-2">
    </div>
<!-- //banner -->

<!-- breadcrumb -->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="index.aspx">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">Fees Status</li>
		</ol>
	</nav>
    <div class="box-lg" style="padding: 30px;">

          <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Fees 
				<span class="font-weight-bold">Status</span>
			</h3>
	 <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Fees_id" DataSourceID="SqlDataSource1" >
                <Columns>
                    
                    <asp:BoundField DataField="Fees_amount" HeaderText="Fees amount" SortExpression="Fees_amount"/>
                   
               
                     <asp:BoundField DataField="Fees_type" HeaderText="Fees type" SortExpression="Fees_type" />
                
               
                     <asp:BoundField DataField="Fees_status" HeaderText="Fees status" SortExpression="Fees_status" />
                    <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" SortExpression="Enrollment_id" />
                    <asp:BoundField DataField="Fees_date" HeaderText="Fees date" SortExpression="Fees_date" />
                  
               
                     <asp:BoundField DataField="Fees_discount" HeaderText="Fees discount" SortExpression="Fees_discount" />
                    <asp:BoundField DataField="Course_name" HeaderText="Course name" SortExpression="Course_name" />
                    <asp:BoundField DataField="Yearly_fees" HeaderText="Yearly fees" SortExpression="Yearly_fees" />
                
               
                     </Columns>
         <EditRowStyle BackColor="#FF5050" BorderColor="Black" BorderStyle="Solid" />
                <EmptyDataRowStyle BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BackColor="AntiqueWhite" BorderColor="Black" BorderStyle="Solid" />
                <PagerStyle BorderColor="Black" BorderStyle="Solid" />
                <RowStyle BorderColor="Black" BorderStyle="Solid" />
                <SortedAscendingCellStyle BorderColor="Black" BorderStyle="Solid" />
                <SortedAscendingHeaderStyle BorderColor="Black" BorderStyle="Dashed" />
                <SortedDescendingCellStyle BorderColor="Black" BorderStyle="Solid" />


            </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT Fees.Fees_id, Fees.Fees_amount, Fees.Fees_type, Fees.Fees_status, Fees.Enrollment_id, Fees.Fees_date, Fees.Course_id, Fees.Fees_discount, Course.Course_name, Course.Yearly_fees FROM Fees INNER JOIN Course ON Fees.Course_id = Course.Course_id WHERE (Fees.Enrollment_id = @Enrollment_id)">
        <SelectParameters>
            <asp:SessionParameter Name="Enrollment_id" SessionField="Enrollment_id" Type="Decimal" />
        </SelectParameters>
            </asp:SqlDataSource>
     </div>

    <table style="margin-left:1102px;" >
        <tr>    

            <th>  <asp:Label ID="Label4" runat="server" Text="Total Fees  " Font-Bold="True"></asp:Label>
   </th>
            <th >   </th>
            <th>   <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
 </th>
        </tr>

        <tr>    

            <th> <asp:Label ID="Label5" runat="server" Text="Total Paid Fees : " Font-Bold="True"></asp:Label>
    </th>
             <th >   </th>
            <th><asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
    </th>
        </tr>
        <tr>        

            <th><asp:Label ID="Label6" runat="server" Text="Total Remaining Fees : " Font-Bold="True"></asp:Label>
      </th>
             <th >   </th>
            <th> &nbsp;<asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True"></asp:Label>
      </th>
        </tr>

    </table>
    <br />
    <br />
              
	<!-- breadcrumb -->
</asp:Content>

