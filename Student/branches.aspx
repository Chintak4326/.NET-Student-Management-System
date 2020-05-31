<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="branches.aspx.vb" Inherits="Student_branches" %>

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
			<li class="breadcrumb-item active" aria-current="page">Branch</li>
		</ol>
	</nav>
	<!-- breadcrumb -->

     <!-- blog -->
	<div class="blog-w3l py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-bold">Branches</h3>
			<div class="row blog-content pt-md-4">
				<!-- left side -->
                <%             
						     Dim cn As New System.Data.SqlClient.SqlConnection
						     Dim cmd As New System.Data.SqlClient.SqlCommand
                    cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chintak\Desktop\Sakar Group Tuition\StudentManagement\App_Data\sms.mdf;Integrated Security=True;User Instance=True"
						     cn.Open()
                    '         cmd.CommandText = "Select Address from Branch where Branch_id='13'"
                    'cmd.Connection = cn
                    '                 Dim p As String
                    '                 p = cmd.ExecuteScalar()%>

				<div class="col-lg-12 blog_section"style="margin-top: 38px;">
					<div class="card"style="height: 500px;">
                    <%--<iframe src= '<%= p%>' height="500" frameborder="0" style="border:0">    
                        </iframe>--%>
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.0985039597876!2d72.63941531357675!3d23.056849984935734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e81312b07f139%3A0x3ff5de72cee79c3d!2sSakar+Group+Tuition!5e0!3m2!1sen!2sin!4v1545954941961"height="500" frameborder="0" style="border:0"></iframe>
						<div class="card-body text-center"style="background-color: black;">
							<h6 style="color:white;font-size: 27px;">HEAD OFFICE (SAKAR-1)</h6>
						<li>
                        <%             
                            cmd.CommandText = "Select address from branch where Branch_id='13'"
						     cmd.Connection = cn
						     Dim k As String
						     k = cmd.ExecuteScalar()%>
                             <p style="color: white;margin-right: 416px;margin-left: 416px;"><%= k%> 
						</p>
                        </li>
                        
						</div>
					</div>
                    <br />
					<div class="card my-4"style="height: 500px;">
						<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3671.179722822801!2d72.64213706450876!3d23.05387173493719!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sB-5%2C+Gopalnagar+Society+Near+Cine+Pride%2C+Krishnanagar!5e0!3m2!1sen!2sin!4v1549660215609"height="500" frameborder="0" style="border:0"></iframe>
						<div class="card-body text-center"style="background-color: black;">
							<h6 style="color:white;font-size: 27px;">SAKAR-2</h6>
						       <li><%   
                                         
                         Dim cmd3 As New System.Data.SqlClient.SqlCommand
						               cmd3.CommandText = "Select Address from Branch where Branch_id='14'"
                         cmd3.Connection = cn
                         Dim a As String
                         a = cmd3.ExecuteScalar()%>
						<p style="color: white;margin-left: 407px;margin-right: 407px;"><%=a%> 
						</p>
			    </li>
						</div>
					</div>
                    <br />
					<div class="card my-4"style="height: 500px;">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d917.7961397406516!2d72.64280022637334!3d23.053694384937412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e86c6b65ceb81%3A0x748fc19934eadf98!2sMiraj+Cine+Pride!5e0!3m2!1sen!2sin!4v1549660472119" height="500" frameborder="0" style="border:0"></iframe>
						<div class="card-body text-center"style="background-color: black;">
							<h6 style="color:white;font-size: 27px;">SAKAR-3</h6>
						        <li><%   
                                         
						                Dim cmd1 As New System.Data.SqlClient.SqlCommand
						                cmd1.CommandText = "Select Address from Branch where Branch_name='SAKAR-3'"
						                cmd1.Connection = cn
						                Dim b As String
						                b = cmd1.ExecuteScalar()%>
						                <p style="color: white;margin-left: 407px;margin-right: 407px;"><%=b%> 
						                </p>
			                     </li>
						</div>
					</div>
					<!-- //left side -->
				</div>
                </div>
		</div>
	</div>
	<!-- //blog -->

</asp:Content>
