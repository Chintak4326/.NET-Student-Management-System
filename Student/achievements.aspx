<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="achievements.aspx.vb" Inherits="Student_achievements" %>

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
			<li class="breadcrumb-item active" aria-current="page">Achievements</li>
		</ol>
	</nav>
    <h3 class="title text-capitalize font-weight-light text-dark text-center mb-sm-5 mb-4"style="margin-top: 50px;">Our
				<span class="font-weight-bold">Achievements</span>
			</h3>
      <%
                Dim dm As New DataManager
                Dim dtFeatured As Data.DataTable = dm.getdata("Select * from Achievement Order by Achievement_id desc")
                For Each dr As Data.DataRow In dtFeatured.Rows%>
   
    <div class="course-w3ls py-5">
		<div class="container py-xl-5 py-lg-3" style="margin-top: -92px;">
			
           <div class="row cource-list-agile pt-4">
				<div class="col-lg-7 agile-course-main">
					<div class="w3ls-cource-first" style="padding: 10px 7px 120px;">
                         <%
                             Dim dtimage As Data.DataTable = dm.getdata("Select * from Achievement where Achievement_id=" & dr.Item(0))
                            %>
                        <%--<img height="146px" width="146px" class="img-fluid" src="../ProductImages/<%=dr.Item(4).ToString()%>" alt="Image Alternative text" title="Image Title" />--%>
                  
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Achieve</h3>
							<p class="mt-3 mb-4 pr-lg-5"><%=dr.Item(2).ToString()%></p>
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dr.Item(1).ToString() %></li>
								
									<i class="fas fa-users mr-3"></i><%=dr.Item(3).ToString()%></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-5 agile-course-main-2 mt-4">
					<img src="../ProductImages/<%=dr.Item(4).ToString()%>" alt="" class="img-fluid">
				</div>
				<%--<div class="buttons-w3ls">
					<a class="btn button-cour-w3ls text-white" href="course_details.html" role="button">Learn More</a>
					<a class="btn bg-dark text-white" href="form.html" role="button">Apply Now</a>
				</div>--%>
			</div>
            </div>
        </div>
    <%Next
            %>
	<!-- breadcrumb -->
</asp:Content>

