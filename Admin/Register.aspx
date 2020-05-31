<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Admin_Register" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
   
   
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Registration</h3>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="row mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Registration Form</h4>
            <div id="message"></div>
            <form id="Form1" runat="server" class="contact-form php-mail-form" role="form" >
<div class="box-lg">
                    <div class="row" data-gutter="100">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Full Name</label>
                                <asp:TextBox class="form-control" ID="txtUserFname" runat="server" ></asp:TextBox>
                                    </div>
                           <%-- <div class="form-group">
                                <label>Lname</label>
                                <asp:TextBox class="form-control" ID="txtUserLname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtUserLname" runat="server" ErrorMessage="Enter User Last-Name"></asp:RequiredFieldValidator>
                            </div>--%>
                            <div class="form-group">
                                <label>Address</label>
                                <asp:TextBox class="form-control" ID="txtUserAddress" runat="server"></asp:TextBox>
                                       </div>
                           <div class="form-group">
                                <label>Email</label>
                                <asp:TextBox class="form-control" ID="txtUserEmail" runat="server"></asp:TextBox>
                                   </div>
                             <div class="form-group">
                                <label>Mobile</label>
                                <asp:TextBox class="form-control" ID="txtUserMobile" runat="server"></asp:TextBox>
                                   </div>
                            
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox class="form-control" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                            <%--<div class="form-group">
                                <label>ProfilePic</label>
                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                            </div>--%>
                            <div class="form-group">
                                <label>Area</label>
                                <asp:DropDownList class="form-control" ID="txtArea" runat="server" DataSourceID="SqlDataSource2" DataTextField="Area_Name" DataValueField="Area_Id"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Area_Id], [Area_Name] FROM [Area]"></asp:SqlDataSource>
                                   </div>
                            <asp:Button ID="btnInsert" class="btn btn-primary" runat="server" Text="Regsiter" />
                        </div>

                    </div>
                </div>
                
             

            </form>
          </div>

         
        </div>
        <!-- /row -->


        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="form_component.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="lib/jquery-ui-1.9.2.custom.min.js"></script>
  <!--custom switch-->
  <script src="lib/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="lib/jquery.tagsinput.js"></script>

  <!--Contactform Validation-->
  <script src="lib/php-mail-form/validate.js"></script>

</body>

</html>
