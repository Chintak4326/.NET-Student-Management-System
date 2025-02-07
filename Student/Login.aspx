﻿<%--<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Student_Login" %>--%>
<%@ CodeFile ="~/Student/Login.aspx.vb" Inherits="Student_Login" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
   
      <title>Sakar Group Tution </title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Sakar Group Tution "
	/>
	<script>
	    addEventListener("load", function () {
	        setTimeout(hideURLbar, 0);
	    }, false);

	    function hideURLbar() {
	        window.scrollTo(0, 1);
	    }
	</script>
	<!--// Meta tag Keywords -->

	<!-- Custom-Files -->

	<!-- Bootstrap-Core-Css -->
	<link rel="stylesheet" href="css/bootstrap.css">

    <link rel="stylesheet" href="css/bootstrap - student says.css">
	<!-- Testimonials-Css -->
	<link href="css/mislider.css" rel="stylesheet" type="text/css" />
	<link href="css/mislider-custom.css" rel="stylesheet" type="text/css" />
	<!-- Style-Css -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

    <link rel="stylesheet" href="css/XYZ.css" type="text/css" media="all" />

    <link rel="stylesheet" href="css/studentsaysSTYLE.css" type="text/css" media="all" />
	<!-- Font-Awesome-Icons-Css -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	 rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //Web-Fonts -->

</head>
<body>
     <!-- header -->
	<header>
		<!-- top header -->
		<div class="top-head-w3ls py-2 bg-dark"style="height:50px">
			<div class="container">
				<div class="row">
					<h1 class="text-capitalize text-white col-7">
						<i class="fas fa-book text-dark bg-white p-2 rounded-circle mr-3"></i>welcome to Sakar Group Tution&nbsp;&nbsp; </h1>
					<!-- social icons -->
					<div class="social-icons text-right col-5">
						<ul class="list-unstyled">
							<li>
                                <%If Not Session("Enrollment_id") Is Nothing Then
                                %>
                                <h1 class="text-capitalize text-white col-12"style="margin-top: 10px;">
						 Enrollment No:- <% =Session("Enrollment_id")%>&nbsp;&nbsp; </h1>
                              
                                <% Else
                                
                        
                       
                            End If
                            
                             %>
								<%--<a href="https://www.facebook.com/sakargrouptuition/" class="fab fa-facebook-f icon-border facebook rounded-circle"> </a>--%>
							</li>
							<li class="mx-2">
								<%--<a href="#" class="fab fa-twitter icon-border twitter rounded-circle"> </a>--%>
							</li>
							<li class="mx-0.5">
								<%--<a href="https://www.instagram.com/sakarinstitute/" class="fab fa-instagram icon-border instagram rounded-circle"> </a>--%>
							</li>
							
						</ul>
					</div>
					<!-- //social icons -->
				</div>
			</div>
		</div>
		<!-- //top header -->
		<!-- middle header -->
		<div class="middle-w3ls-nav py-2">
			<div class="container">
				<div class="row">
					<a class="logo font-italic font-weight-bold col-lg-4 text-lg-left text-center" href="index.aspx"><img src="images/sakarinstitute.jpg"style="width: 450px;height: 85px;"></a>
					<div class="col-lg-8 right-info-agiles mt-lg-00 mt-sm-3 mt-1">
						<div class="row"style="margin-left: 160px;margin-right: -250px;margin-top: 6px;">
							<div class="col-sm-4 nav-middle">
								<i class="far fa-envelope-open text-center mr-md-4 mr-sm-2 mr-4"></i>
								<div class="agile-addresmk">
									<p>
										<span class="font-weight-bold text-dark">MailUs</span>
                                        <%   
                                         
                                            Dim cn As New System.Data.SqlClient.SqlConnection
                                            Dim cmd As New System.Data.SqlClient.SqlCommand
                                            cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chintak\Desktop\Sakar Group Tuition\StudentManagement\App_Data\sms.mdf;Integrated Security=True;User Instance=True"
                                            cn.Open()
                                            cmd.CommandText = "Select Email_id from Institute"
                                           cmd.connection=cn
                                            Dim i As String
										   i = cmd.ExecuteScalar()%>
										<a href="mailto:mail@example.com"><%=i%></a>
									</p>
								</div>
							</div>
							<div class="col-sm-4 col-6 nav-middle mt-sm-0 mt-2">
								<i class="fas fa-phone-volume text-center mr-md-4 mr-sm-2 mr-4"></i>
								<div class="agile-addresmk">
									<p>
                                    <%   
                                        Dim cmd1 As New System.Data.SqlClient.SqlCommand
                                        
                                        cmd1.CommandText = "Select Owner_contact_no from Institute"
                                        cmd1.Connection = cn
                                        Dim c As Long
                                        c = cmd1.ExecuteScalar()%>
										<span class="font-weight-bold text-dark">Call Us  </span>
						                  (+91)&nbsp;<%=c%>
									</p>
								</div>
							</div>
								</div>
							</div>   
						</div>
					</div>
				</div>
		<!-- //middle header -->
	</header>
	<!-- //header -->
    <!-- navigation -->
		<div class="navigation-w3ls">
			<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-nav"style="font-weight: bold;">
				<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				 aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
					<ul class="navbar-nav justify-content-center">
						<li class="nav-item ">
							<a class="nav-link text-white" href="index.aspx">Home
								<span class="sr-only"></span>
							</a>
						</li>

                       <li class="nav-item">
							<a class="nav-link text-white" href="about.aspx">About Us</a>
						</li>

                         <li class="nav-item">
							<a class="nav-link text-white" href="branches.aspx">Branches</a>
						</li>
                        
                            <li class="nav-item dropdown">
							<a class="nav-link text-white" href="Courses.aspx" role="button" aria-expanded="false">
                                Courses
							</a>
                            </li>
                             
						
							<%--<div class="dropdown-menu">
								<a class="dropdown-item" href="SSC.aspx?id=1">SSC</a>
								<a class="dropdown-item" href="commerce.aspx?id=2">Commerce</a>
                                <a class="dropdown-item" href="science.aspx?id=3">Science</a>
                            </div>--%>
						
                        <%If Not Session("Enrollment_id") Is Nothing Then
                                %>
                        <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle text-white" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Student Corner
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="attendancesheet.aspx">Attendance Sheet</a>
                                <a class="dropdown-item" href="assignments.aspx">Assignments</a>
                                <a class="dropdown-item" href="lecturetimetable.aspx">Lecture Timetable</a>
                                <a class="dropdown-item" href="examschedule.aspx">Exam Schedule</a>
                                <a class="dropdown-item" href="feesstatus.aspx">Fees Status</a>
                                <a class="dropdown-item" href="results.aspx">Results</a>
								<%--<div class="dropdown-divider"></div>--%>
								<%--<a class="dropdown-item" href="achievements.aspx">Achievements</a>--%>
							</div>
						</li>
                        <% Else
                                
                        
                       
                            End If
                            
                             %>
                             <li class="nav-item dropdown">
							<a class="nav-link text-white" href="achievements.aspx">Achievements</a>
						</li>
                        <li class="nav-item dropdown">
							<a class="nav-link text-white" href="gallery.aspx">Gallery</a>
						</li>
                        <%If Not Session("Enrollment_id") Is Nothing Then
                                %>
                         <li class="nav-item dropdown">
							<a class="nav-link text-white" href="feedback.aspx">Feedback</a>
						</li>
                          <li class="nav-item dropdown">
							<a class="nav-link text-white" href="rating.aspx">Rating</a>
						</li>
                        <% Else
                                
                        
                       
                            End If
                            
                             %>
						<li class="nav-item">
							<a class="nav-link text-white" href="contact.aspx">Contact Us</a>
						</li>

                        <%If Not Session("Enrollment_id") Is Nothing Then
                                %>
                        <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle text-white" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Profile
							</a>
							<div class="dropdown-menu">
                               
								<a class="dropdown-item" href="logout.aspx">Logout</a>
                                <a class="dropdown-item" href="Changepassword.aspx">Change Password</a>
							</div>
						</li>
                        <% Else
                                %>
                                 <li class="nav-item">
							<a class="nav-link text-white" href="Login.aspx">Login</a>
						</li>
                        
                       <%
                            End If
                            
                             %>

                        
					</ul>
				</div>
			</nav>
		</div>
		<!-- //navigation -->
	<!--banner-->
        <div class="banner-agile-2">
        </div>
    <!--banner-->

	<!-- breadcrumb -->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="index.aspx">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">Login Form</li>
		</ol>
	</nav>
	<!-- breadcrumb -->
	<!-- //banner -->
<!-- login -->

	<div class="login-w3ls py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Login
				<span class="font-weight-bold">now</span>
			</h3>
			<!-- content -->
           

			<div class="sub-main-w3 pt-md-4"style="margin-left: 0px;">
				<form action="#" style="width:550px;" runat="server">
					<div class="form-style-agile form-group">
						<label>
							Enrollment ID
							<i class="fas fa-user"></i>
						</label>
                        <asp:TextBox placeholder="Enrollment ID" ID="txtUserEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1EnrollmentID" runat="server" ErrorMessage="Enrollment ID is required" ForeColor="red" ControlToValidate="txtUserEmail" Text="Enrollment Id is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" style="margin-left: -178px;" runat="server" ErrorMessage="Enter Only Numbers" ControlToValidate ="txtUserEmail" ForeColor ="red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
					</div>
                    <br/>
					<div class="form-style-agile form-group">
						<label>
							Password
							<i class="fas fa-unlock-alt"></i>
						</label>
                        <asp:TextBox placeholder="Password"  ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enrollment Id is required" ForeColor="red" ControlToValidate="txtPassword" Text="Password is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="Regex2" style="margin-left: -153px;" runat="server" ControlToValidate="txtPassword"
                         ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
                         ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="Red" />      
                           
					 <br/>
                    </div>
                    <br/>
					<!-- switch -->
					<ul class="list-unstyled list-login">
						<%--<li class="switch-agileits float-left">
							<label class="switch  text-capitalize">
								<input type="checkbox">
								<span class="slider-switch round"></span>
								keep me signed in
							</label>
						</li>--%>
						<li class="float-right">
                        <a href="Forgot Password.aspx" class="text-right text-white text-capitalize">forgot password?</a>
							
						</li>
					</ul>
                    <br/>
					<!-- //switch -->
                  <asp:Button ID="btnInsert" class="btn btn-primary w-md waves-effect waves-light" style="width: 500px;margin-top: 11px;height: 47px;" type="submit" runat="server" Text="Login" />
            
				</form>
			</div>
			<!-- //content -->
		</div>
	</div>
	<!-- //login -->
 <!-- footer -->
    <footer>
		<div class="container py-4">
	<div class="contact w3ls-contact" id="contact">
		<div class="container w3-contact">
			<div class="list1"style="padding-right: 66px;">
			<ul class="Address">
				<li class="heading"> Address </li>
				<li><%   
                                         
                         Dim cmd3 As New System.Data.SqlClient.SqlCommand
				        cmd3.CommandText = "Select Address from Branch where Branch_id='13'"
                         cmd3.Connection = cn
                         Dim a As String
                         a = cmd3.ExecuteScalar()%>
						<p style="color: white;margin-right: 91px;"><%=a%> 
						</p>
			    </li>
			</ul>
			
			<ul class="Contact Us"style="margin-right: -20px;">
				<li class="heading">Contact Us</li>
                                    <%   
                                        Dim cmd4 As New System.Data.SqlClient.SqlCommand
                                        
                                        cmd4.CommandText = "Select Owner_contact_no from Institute"
                                        cmd4.Connection = cn
                                        Dim b As Long
                                        b = cmd4.ExecuteScalar()%>
						                  (+91)&nbsp;<%=c%>
                                    <li>
                                    <%   
                                        Dim cmd5 As New System.Data.SqlClient.SqlCommand
                                        cmd5.CommandText = "Select Email_id from Institute"
                                        cmd5.Connection = cn
                                        Dim p As String
                                        p = cmd5.ExecuteScalar()%>
										<a href="mailto:mail@example.com"><%=i%></a>
                                    </li>
			</ul>
			</div>
			<div class="list2">
			<ul class="contact-hrs">
				<li class="heading">Our Timings </li>
				<li>Monday - Saturday</li>
				<li>09:00 AM - 08:00 PM</li>
				<li>Weakly Special Class</li>
				<li>Parents Meeting</li>
			</ul>
			
			<ul class="social-links">
				<li class="heading">Follow Us</li>
				<li><a href="https://www.facebook.com/sakargrouptuition/">Facebook</a></li>
				<li><a href="https://www.instagram.com/sakarinstitute/">Instagram</a></li>
			</ul>
			</div>
		</div>
		
	</div>
    </div>
     <div class="copyright-agiles py-3">
			<div class="container">
				<div class="row">
					<p class="col-lg-8 copy-right-grids text-white text-lg-left text-center mt-lg-1">Sakar Group Tuition © All Rights Reserved.
                    </p>
                    <!-- social icons -->
					<div class="social-icons text-lg-right text-center col-lg-4 mt-lg-0 mt-3">
						<ul class="list-unstyled">
							<li>
								<a href="#" class="fab fa-facebook-f icon-border facebook rounded-circle"> </a>
							</li>
							<li class="mx-2">
								<a href="#" class="fab fa-instagram icon-border instagram rounded-circle"> </a>
							</li>
						</ul>
					</div>
					<!-- //social icons -->

				</div>
			</div>
		</div>
    </footer>
	<!-- //footer -->

	<!-- Js files -->
	<!-- JavaScript -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->
	<script src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- banner slider -->
	<script src="js/slider.js"></script>
	<!-- //banner slider -->

	<!-- testimonial-plugin -->
	<script src="js/mislider.js"></script>
	<script>
		jQuery(function ($) {
			var slider = $('.mis-stage').miSlider({
				//  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
				stageHeight: 320,
				//  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
				slidesOnStage: false,
				//  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
				slidePosition: 'center',
				//  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
				slideStart: 'mid',
				//  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
				slideScaling: 150,
				//  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
				offsetV: -5,
				//  Center slide contents vertically - Boolean. Default: false
				centerV: true,
				//  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
				navButtonsOpacity: 1,
			});
		});
	</script>
	<!-- //testimonial-plugin -->

	<!-- numscroller-js-file -->
	<script src="js/numscroller-1.0.js"></script>
	<!-- //numscroller-js-file -->

	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->

	<!-- move-top -->
	<script src="js/move-top.js"></script>
	<!-- easing -->
	<script src="js/easing.js"></script>
	<!--  necessary snippets for few javascript files -->
	<script src="js/edulearn.js"></script>

	<!-- //Js files -->
</body>
</html>