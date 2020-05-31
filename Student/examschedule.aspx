<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="examschedule.aspx.vb" Inherits="Student_examschedule" %>

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
			<li class="breadcrumb-item active" aria-current="page">Exam Schedule</li>
		</ol>
	</nav>
    <div class="box-lg" style="padding: 30px;">

          <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Exam
				<span class="font-weight-bold">Schedule</span>
			</h3>
	 <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Exam_timetable_id" DataSourceID="SqlDataSource2" >
                <Columns>
                    
                    <asp:BoundField DataField="Exam_name" HeaderText="Exam name" SortExpression="Exam_name" />
                    <asp:BoundField DataField="Exam_date" HeaderText="Exam date" SortExpression="Exam_date"/>
                   
               
                     <asp:BoundField DataField="Start_time" HeaderText="Start time" SortExpression="Start_time" />
                
               
                     <asp:BoundField DataField="End_time" HeaderText="End time" SortExpression="End_time" />
                   <asp:BoundField DataField="Total_marks" HeaderText="Total marks" SortExpression="Total_marks" />
                    <asp:BoundField DataField="Passing_marks" HeaderText="Passing marks" SortExpression="Passing_marks" />
                     <asp:BoundField DataField="Standard_name" HeaderText="Standard name" SortExpression="Standard_name" />
                  <%--  <asp:BoundField DataField="Subject_name" HeaderText="Subject name" SortExpression="Subject_name" />--%>
                
               
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
   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT Exam_Timetable.Exam_timetable_id, Exam_Timetable.Exam_name, Exam_Timetable.Exam_date, Exam_Timetable.Start_time, Exam_Timetable.End_time, Exam_Timetable.Batch_id, Exam_Timetable.Total_marks, Exam_Timetable.Passing_marks, Exam_Timetable.Subject_id, Exam_Timetable.Standard_id, Batch.Batch_name, Standard.Standard_name, Subject.Subject_name FROM Exam_Timetable INNER JOIN Batch ON Exam_Timetable.Batch_id = Batch.Batch_id INNER JOIN Standard ON Exam_Timetable.Standard_id = Standard.Standard_id INNER JOIN Subject ON Exam_Timetable.Subject_id = Subject.Subject_id">
            </asp:SqlDataSource>--%>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT Standard.Standard_name, Exam_Timetable.* FROM Exam_Timetable INNER JOIN Standard ON Exam_Timetable.Standard_id = Standard.Standard_id">
          </asp:SqlDataSource>
     </div>
	<!-- breadcrumb -->
</asp:Content>

