<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="Admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
    .form-panel {
    height: 580px !important;
}
.col-lg-3 {
    width: 30% !important;
}
.panel-primary>.panel-heading {
    color: #fff;
    background-color: #da0c0d !important;
    border-color: #da0c0d !important;
}
.panel-primary {
    border-color: #da0c0d !important;
}
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<h1>Welcome To  Sakar Group Tuition  Admin Panel</h1>


    <br />
    <br />
<%--    <img src="../ProductImages/student.jpg" alt=" " class="img-fluid">--%>
		
        <div class="col-sm-6 col-lg-3">
        <div class="panel panel-primary text-center">
            <div class="panel-heading">
                <% Dim dm As New DataManager%>
                <h4 class="panel-title">Total Students</h4>
            </div>
            <div class="panel-body">
                <h3 class=""><b><%=dm.getValue("Select count(*) from User1")%></b></h3>
            </div>
        </div>

    </div>
    <div class="col-sm-6 col-lg-3">
        <div class="panel panel-primary text-center">
            <div class="panel-heading">
                <h4 class="panel-title">Total Branch</h4>
            </div>
            <div class="panel-body">
                <h3 class=""><b><%=dm.getValue("Select count(*) from Branch") %></b></h3>
                 <%--<h3 class=""><b><%=0%></b></h3>--%>
             
            </div>
        </div>
    </div>

     <div class="col-sm-6 col-lg-3">
        <div class="panel panel-primary text-center">
            <div class="panel-heading">
                <h4 class="panel-title">Total Courses</h4>
            </div>
            <div class="panel-body">
                <h3 class=""><b><%= dm.getValue("Select count(*) from Course")%></b></h3>
                 <%--<h3 class=""><b><%=0%></b></h3>--%>
             
            </div>
        </div>
    </div>
     <div class="col-sm-6 col-lg-3">
        <div class="panel panel-primary text-center">
            <div class="panel-heading">
                <h4 class="panel-title">Total Rating</h4>
            </div>
            <div class="panel-body">
                <h3 class=""><b><%= dm.getValue("Select count(*) from Rating")%></b></h3>
                 <%--<h3 class=""><b><%=0%></b></h3>--%>
             
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-lg-3">
        <div class="panel panel-primary text-center">
            <div class="panel-heading">
                <h4 class="panel-title">Total Feedback</h4>
            </div>
            <div class="panel-body">
                <h3 class=""><b><%= dm.getValue("Select count(*) from Feedback")%></b></h3>
               <%--  <h3 class=""><b><%=%></b></h3>--%>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-lg-3">
        <div class="panel panel-primary text-center">
            <div class="panel-heading">
                <h4 class="panel-title">Total Medium</h4>
            </div>
            <div class="panel-body">
                <h3 class=""><b><%=dm.getValue("Select count(*) from Medium") %></b></h3>
                
             
            </div>
        </div>
    </div>
    

    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Order].Order_id, [Order].Order_date, [Order].User_id, [Order].Courier_id, [Order].Expect_deli_date, [Order].Tracking_id, [Order].Discount, User_Master.User_fullname FROM [Order] INNER JOIN User_Master ON [Order].User_id = User_Master.User_id"></asp:SqlDataSource>--%>
						
</asp:Content>

