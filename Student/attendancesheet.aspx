<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="attendancesheet.aspx.vb" Inherits="Student_attendancesheet" %>

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
			<li class="breadcrumb-item active" aria-current="page">Attendance Sheet</li>
		</ol>
	</nav>
	<!-- breadcrumb -->

     <div class="box-lg" style="padding: 30px;">

          <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Attendance 
				<span class="font-weight-bold">Sheet</span>
			</h3>
	 <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Attendance_id" DataSourceID="SqlDataSource1" >
                <Columns>
                    
                     <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" SortExpression="Enrollment_id" />
                    <asp:BoundField DataField="Attendance_date" HeaderText="Attendance date" SortExpression="Attendance_date"/>
                   
               
                     <asp:BoundField DataField="Status_name" HeaderText="Status name" SortExpression="Status_name" />
                
               
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
                SelectCommand="SELECT Attendance.Attendance_id, Attendance.Enrollment_id, Attendance.Attendance_date, Attendance.Status_id, Status.Status_name FROM Attendance INNER JOIN Status ON Attendance.Status_id = Status.Status_id WHERE (Attendance.Enrollment_id = @Enrollment_id)">
        <SelectParameters>
            <asp:SessionParameter Name="Enrollment_id" SessionField="Enrollment_id" Type="Decimal" />
        </SelectParameters>
            </asp:SqlDataSource>
     </div>
</asp:Content>

