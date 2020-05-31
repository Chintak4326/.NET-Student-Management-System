<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="assignments.aspx.vb" Inherits="Student_assignments" %>

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
			<li class="breadcrumb-item active" aria-current="page">Assignments</li>
		</ol>
	</nav>
    <div class="box-lg" style="padding: 30px;">

          <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">
				<span class="font-weight-bold">Assignments</span>
			</h3>
	 <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Assignment_id" DataSourceID="SqlDataSource1" >
                <Columns>
                    
                    <asp:BoundField DataField="Assignment_id" HeaderText="Assignment id" ReadOnly="True" SortExpression="Assignment_id" InsertVisible="False" />
                    <asp:BoundField DataField="Assignment_date" HeaderText="Assignment date" SortExpression="Assignment_date" />
                    <asp:BoundField DataField="Submission_date" HeaderText="Submission date" SortExpression="Submission_date"/>
                   
               
                     <asp:BoundField DataField="Assignment_url" HeaderText="Assignment url" SortExpression="Assignment_url" />
                    <asp:BoundField DataField="Batch_name" HeaderText="Batch name" SortExpression="Batch_name" />
                
               <%-- <asp:TemplateField HeaderText="Download Here">  
                                    <ItemTemplate>  
                                        <asp:LinkButton ID="lnkDownload" runat="server" CausesValidation="False" CommandArgument='<%# Eval("FileName") %>'  
                                            CommandName="Download" Text='<%# Eval("FileName") %>' />  
                                    </ItemTemplate>  
                                </asp:TemplateField>--%> 
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
                SelectCommand="SELECT Assignment.Assignment_id, Assignment.Assignment_date, Assignment.Submission_date, Assignment.Batch_id, Assignment.Assignment_url, Batch.Batch_name FROM Assignment INNER JOIN Batch ON Assignment.Batch_id = Batch.Batch_id">
            </asp:SqlDataSource>
     </div>

    <%--<table style="margin-left:1200px;" >
        <tr>    

            <th> 
                 <a href='Assignment/<%=GridView1.Rows(0).Cells(3).Text %>'>  <asp:Label ID="Label4" runat="server" Text="Download Assignment" Font-Bold="True"></asp:Label></a>
   </th>
  
        </tr>
           

    </table>
    <br />
    <br />--%>
    <%
                        Dim dm As New DataManager
                        'Dim dt As Data.DataTable = dm.getdata("Select d_id,d_name,diet,User_Id from Diet")
                      
        Dim dt As Data.DataTable = dm.getdata("Select * from Assignment")
                        For Each dr As Data.DataRow In dt.Rows%>
                     
                         <p style="margin-left:100px;"> Assignment Download: <%=dr.Item(4).ToString%>

                               <a href='../Assignment/<%=dr.Item(4).ToString%>' download> 
               Download</a>
                         </p>
    

     <%Next%>
    <br />
    <br />
</asp:Content>

