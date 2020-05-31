<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="results.aspx.vb" Inherits="Student_results" %>

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
			<li class="breadcrumb-item active" aria-current="page">Results</li>
		</ol>
	</nav>
    <div class="box-lg" style="padding: 30px;">

          <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">
				<span class="font-weight-bold">Results</span>
			</h3>
	 <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Result_id" DataSourceID="SqlDataSource1" >
                <Columns>
                    
                   <asp:BoundField DataField="Enrollment_id" HeaderText="Enrollment id" SortExpression="Enrollment_id" />
                    <asp:BoundField DataField="Exam_timetable_id" HeaderText="Exam timetable id" SortExpression="Exam_timetable_id"/>
                   
               
                     <asp:BoundField DataField="Obtain_marks" HeaderText="Obtain marks" SortExpression="Obtain_marks" />
                
               
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
                SelectCommand="SELECT * FROM [Result] WHERE ([Enrollment_id] = @Enrollment_id)">
        <SelectParameters>
            <asp:SessionParameter Name="Enrollment_id" SessionField="Enrollment_id" Type="Decimal" />
        </SelectParameters>
            </asp:SqlDataSource>
     </div>
	<!-- breadcrumb -->
</asp:Content>

