<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="lecturetimetable.aspx.vb" Inherits="Student_lecturetimetable" %>

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
			<li class="breadcrumb-item active" aria-current="page">Lecture Timetable</li>
		</ol>
	</nav>
    <div class="box-lg" style="padding: 30px;">

          <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Lecture 
				<span class="font-weight-bold">Timetable</span>
			</h3>
	 <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Timetable_id" DataSourceID="SqlDataSource1" >
                <Columns>
                    
                   
                     
               
                     <asp:BoundField DataField="Start_time" HeaderText="Start time" SortExpression="Start_time" />
                    <asp:BoundField DataField="End_time" HeaderText="End time" SortExpression="End_time" />
                
               
                     <asp:BoundField DataField="Batch_name" HeaderText="Batch name" SortExpression="Batch_name" />
                    <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                
               
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
                SelectCommand="SELECT Timetable.Timetable_id, Timetable.Day_id, Timetable.Batch_id, Timetable.Start_time, Timetable.End_time, Batch.Batch_name, Day.Day FROM Timetable INNER JOIN Batch ON Timetable.Batch_id = Batch.Batch_id INNER JOIN Day ON Timetable.Day_id = Day.Day_id">
            </asp:SqlDataSource>
     </div>
	<!-- breadcrumb -->
</asp:Content>

