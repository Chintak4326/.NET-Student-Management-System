<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="Student_contact" %>

<%@ Import Namespace="System.Data.SqlClient" %>

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
			<li class="breadcrumb-item active" aria-current="page">Contact Us</li>
		</ol>
	</nav>
	<!-- breadcrumb -->

 <!-- contact -->
	<div class="contact py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">contact
				<span class="font-weight-bold">us</span>
			</h3>
			<div class="row contact-grids agile-1 py-sm-5 pb-sm-0 pb-5">
				<div class="col-sm-4 contact-grid agileinfo-6 mt-sm-0 mt-2">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-map-marker-alt rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Address</h4>
						 <%   
                                         
						     Dim cn As New System.Data.SqlClient.SqlConnection
						     Dim cmd As New System.Data.SqlClient.SqlCommand
						     cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chintak\Desktop\Sakar Group Tuition\StudentManagement\App_Data\sms.mdf;Integrated Security=True;User Instance=True"
						     cn.Open()
						     cmd.CommandText = "Select Address from Branch where Institute_id='4'"
						     cmd.Connection = cn
						     Dim a As String
						     a = cmd.ExecuteScalar()%>
                             <p style="color: black;margin-right: 82px;margin-left: 68px;"><%=a%> 
						</p>
        				</div>
				</div>
				<div class="col-sm-4 contact-grid agileinfo-6 my-sm-0 my-4">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-phone rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Call Us</h4>

                        <p>
                         <%   
                             Dim cmd1 As New System.Data.SqlClient.SqlCommand
                                        
                             cmd1.CommandText = "Select Contact_no from Branch where Branch_id='13'"
                             cmd1.Connection = cn
                             Dim b As Long
                             b = cmd1.ExecuteScalar()%>
						     (+91)&nbsp;<%= b%>
						 </p>
                         <p> 
                         <%   
                             Dim cmd2 As New System.Data.SqlClient.SqlCommand
                                        
                             cmd2.CommandText = "Select Contact_no from Branch where Branch_id='14'"
                             cmd2.Connection = cn
                             Dim p As Long
                             p = cmd2.ExecuteScalar()%>
						     (+91)&nbsp;<%= p%>
						 </p>
					</div>
				</div>
				<div class="col-sm-4 contact-grid agileinfo-6">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-envelope-open rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Email</h4>
						 <p>
                                    <%   
                                        Dim cmd5 As New System.Data.SqlClient.SqlCommand
                                        cmd5.CommandText = "Select Email_id from Institute"
                                        cmd5.Connection = cn
                                        Dim i As String
                                        i = cmd5.ExecuteScalar()%>
										<a href="mailto:mail@example.com"><%=i%></a>
                        </p>
					</div>
				</div>
			</div>
         </div>
	   </div>
<!-- //contact -->

            <!-- Map -->
	        <div class="container py-4">
			<div class="row py-xl-5 py-sm-3"style="margin-top: -120px;">
				<div class="col-lg-6 map"style="margin-top: 39px;">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.0985039597876!2d72.63941531357675!3d23.056849984935734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e81312b07f139%3A0x3ff5de72cee79c3d!2sSakar+Group+Tuition!5e0!3m2!1sen!2sin!4v1545954941961" ></iframe>
				</div>
				<div class="col-lg-6 contact-agileits-w3layouts mt-lg-0 mt-6">
					<form action="#" method="post">
                <div class=" contact-grids1 w3ls my-xl-5 my-6">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True">First Name</asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1FirstName" runat="server" ErrorMessage="First Name is required" ForeColor="red" ControlToValidate="TextBox1" Text="*"></asp:RequiredFieldValidator>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
                            <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True">Last Name</asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" required></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1LastName" runat="server" ErrorMessage="Last Name is required" ForeColor="red" ControlToValidate ="Textbox2" Text ="*"></asp:RequiredFieldValidator>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
                            <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True">Subject</asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" required></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2Subject" runat="server" ErrorMessage="Subject is required" ForeColor ="red" ControlToValidate ="TextBox3" Text ="*"></asp:RequiredFieldValidator>
                            
                        </div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
                            <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True">E-mail</asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               
						</div>
					</div>
					<div class="contact-me animated wow slideInUp form-group">
                        <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True">Message</asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" required></asp:TextBox>
					</div>
					<div class="contact-form">

                        <asp:Button ID="Button2" runat="server" Text="Submit" Font-Bold="True"/>
  					</div>
				</div>
			    </form>
				</div>
			</div>
		</div>
	        <!-- //Map -->

    </div>

</asp:Content>

