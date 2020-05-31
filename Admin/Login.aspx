<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Admin_Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>SAKAR - Admin </title>

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
</head >

<body>
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
   
   
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
     <div id="login-page"  style="background-image:url(img/1.jpg);height: 654px;" >
    <div class="container">
     <%-- <form class="form-login">--%>
      <form id="Form1" runat="server" class="form-login contact-form php-mail-form" role="form" >
        <h2 class="form-login-heading">sign in now</h2>
        <a class="logo font-italic font-weight-bold col-lg-4 text-lg-left text-center"><img src="img/sakarinstitute.jpg"style="margin-top: 216px;width: 332px;margin-left: -8px;height: 71px;"></a>
        <div class="login-wrap"style="margin-top: 238px;height: 73px;">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <%--<form runat="server" class="form-login contact-form php-mail-form" role="form" >--%>
              <div class="form-group">
             
                  <asp:TextBox placeholder="User ID" ID="txtEmail" runat="server" class="form-control" TextMode="email" style="width: 320px;margin-left: -115px;margin-top: -240px;"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1EmailID" style="margin-left: -115px;" runat="server" ErrorMessage="Email id is required" ForeColor="red" ControlToValidate="txtEmail" Text="Email id is required"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" style="margin-left: -118px;" runat="server" ErrorMessage="Invalid Email Id" ForeColor="red" ControlToValidate="txtEmail"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					
              </div>
              <div class="form-group"style="margin-right: -79px;margin-left: -115px;">
             
                <asp:TextBox placeholder="Password"  ID="txtPassword" class="form-control" runat="server" TextMode="Password" style="width: 320px;margin-left: 0px;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="margin-left: 0px;" runat="server" ErrorMessage="Email id is required" ForeColor="red" ControlToValidate="txtPassword" Text="Password is required"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="Regex2" style="margin-left: -128px;" runat="server" ControlToValidate="txtPassword"
    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
    ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Num & 1 Special Character" ForeColor="Red" />      
              </div>
              <span class="pull-right" style="margin-top: -100px;margin-right: -76px;"> 
                     <a href="ForgotPassword.aspx"> Forgot Password?</a>
              </span>
              <div class="form-group">
                <button id="btnLogin" class="btn btn-primary w-md waves-effect waves-light" type="submit" style="width: 320px;margin-left: -115px;margin-top: 0px;" runat="server">Sign In</button>
              </div>
            <%--</form>--%>
          </div>
        </div>
        <%--</form>--%>
        </form>
      </div>
    </div>
    <!-- /MAIN CONTENT -->
    <!--main content end-->

   <%-- <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Sakar Group Tuition</strong>. All Rights Reserved
        </p>
      </div>
    </footer>
    <!--footer end-->--%>

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
