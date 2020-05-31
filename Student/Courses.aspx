<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="Courses.aspx.vb" Inherits="Student_Courses" %>

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
			<li class="breadcrumb-item active" aria-current="page">Courses</li>
		</ol>
	</nav>
	<!-- breadcrumb -->

    <!-- blog -->
      <div class="box-lg" style="padding: 30px;">

          <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Our
				<span class="font-weight-bold">Courses</span>
			</h3>
	 <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Course_id" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Course_name" HeaderText="Course name" SortExpression="Course_name" />
                    <asp:BoundField DataField="Yearly_fees" HeaderText="Yearly fees" SortExpression="Yearly_fees" />
                     <asp:BoundField DataField="Advance_fees" HeaderText="Advance fees" SortExpression="Advance_fees" />
                    <asp:BoundField DataField="Monthly_fees" HeaderText="Monthly fees" SortExpression="Monthly_fees" />
                    <asp:BoundField DataField="Instalments" HeaderText="Instalments" SortExpression="Instalments" />
                   
                     <asp:BoundField DataField="Board_name" HeaderText="Board name" SortExpression="Board_name" />
                    <asp:BoundField DataField="Medium_type" HeaderText="Medium type" SortExpression="Medium_type" />
                    <asp:BoundField DataField="Standard_name" HeaderText="Standard name" SortExpression="Standard_name" />
                    <asp:BoundField DataField="Stream_type" HeaderText="Stream type" SortExpression="Stream_type" />
              
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
            <br />
          
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [Course_id] = @Course_id" InsertCommand="INSERT INTO [Course] ([Course_name], [Standard_id], [Medium_id], [Board_id], [Yearly_fees], [Advance_fees], [Monthly_fees], [Instalments], [Stream_id]) VALUES (@Course_name, @Standard_id, @Medium_id, @Board_id, @Yearly_fees, @Advance_fees, @Monthly_fees, @Instalments, @Stream_id)" SelectCommand="SELECT Course.Course_id, Course.Course_name, Course.Standard_id, Course.Medium_id, Course.Board_id, Course.Yearly_fees, Course.Advance_fees, Course.Monthly_fees, Course.Instalments, Course.Stream_id, Board.Board_name, Medium.Medium_type, Standard.Standard_name, Stream.Stream_type FROM Course INNER JOIN Board ON Course.Board_id = Board.Board_id INNER JOIN Medium ON Course.Medium_id = Medium.Medium_id INNER JOIN Standard ON Course.Standard_id = Standard.Standard_id INNER JOIN Stream ON Course.Stream_id = Stream.Stream_id" UpdateCommand="UPDATE [Course] SET [Course_name] = @Course_name, [Standard_id] = @Standard_id, [Medium_id] = @Medium_id, [Board_id] = @Board_id, [Yearly_fees] = @Yearly_fees, [Advance_fees] = @Advance_fees, [Monthly_fees] = @Monthly_fees, [Instalments] = @Instalments, [Stream_id] = @Stream_id WHERE [Course_id] = @Course_id">
                <DeleteParameters>
                    <asp:Parameter Name="Course_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Course_name" Type="String" />
                    <asp:Parameter Name="Standard_id" Type="Decimal" />
                    <asp:Parameter Name="Medium_id" Type="Decimal" />
                    <asp:Parameter Name="Board_id" Type="Decimal" />
                    <asp:Parameter Name="Yearly_fees" Type="Decimal" />
                    <asp:Parameter Name="Advance_fees" Type="Decimal" />
                    <asp:Parameter Name="Monthly_fees" Type="Decimal" />
                    <asp:Parameter Name="Instalments" Type="Decimal" />
                    <asp:Parameter Name="Stream_id" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Course_name" Type="String" />
                    <asp:Parameter Name="Standard_id" Type="Decimal" />
                    <asp:Parameter Name="Medium_id" Type="Decimal" />
                    <asp:Parameter Name="Board_id" Type="Decimal" />
                    <asp:Parameter Name="Yearly_fees" Type="Decimal" />
                    <asp:Parameter Name="Advance_fees" Type="Decimal" />
                    <asp:Parameter Name="Monthly_fees" Type="Decimal" />
                    <asp:Parameter Name="Instalments" Type="Decimal" />
                    <asp:Parameter Name="Stream_id" Type="Decimal" />
                    <asp:Parameter Name="Course_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
     </div>
	<!-- //blog -->

</asp:Content>


