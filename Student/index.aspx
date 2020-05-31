<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Student_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- banner -->
	<div class="banner-agile">
		<ul class="slider">
			<li class="active">
				<div class="banner-w3ls-1">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-2">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-3">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-4">
				</div>
			</li>
			<li class="prev">
				<div class="banner-w3ls-5">
				</div>
			</li>
		</ul>
		<ul class="pager">
			<li data-index="0" class="active"></li>
			<li data-index="1"></li>
			<li data-index="2"></li>
			<li data-index="3"></li>
			<li data-index="4"></li>
		</ul>
		<div class="banner-text-posi-w3ls">
			<div class="banner-text-whtree">
				<h3 class="text-capitalize text-white p-4">your bright future
					<b>is our mission!</b>
				</h3>
				
				<a href="about.aspx" class="button-agiles text-capitalize text-white mt-sm-5 mt-4">read more</a>
			</div>
		</div>
	</div>
	<!-- //banner -->

	<!-- about -->
	<div class="about py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Welcome to
				<span class="font-weight-bold">Sakar Group Tuition</span>
			</h3>
			<div class="row pt-md-4">
				<div class="col-lg-6 about_right">
					<h3 class="text-capitalize text-right font-weight-light font-italic">interface friendly learning at
						<span class="font-weight-bold">Sakar Group Tuition</span>
					</h3>
					<p class="text-right my-4 pr-4 border-right">Enjoy learning with friendly atmosphere.<br>And also mathematics is very enjoyable subject at sakar.
						</p>
					<div class="about_left-list">
						<h6 class="mb-lg-3 mb-2 font-weight-bold text-dark">Our Benefits</h6>
						<ul class="list-unstyled">
							<li class="mb-2">
								<i class="fas fa-check mr-3"></i>To Learn something new</li>
							<li class="mb-2">
								<i class="fas fa-check mr-3"></i>For Better Exam Preparation</li>
							<li class="mb-2">
								<i class="fas fa-check mr-3"></i>Extra help understanding school topics</li>
							<li class="mb-2">
						  <i class="fas fa-check mr-3"></i>More interesting materials for study</li>
							<li class="mb-2">
								<i class="fas fa-check mr-3"></i>Encourages Friendly Competition</li>
                                                  <li class="mb-2">
								<i class="fas fa-check mr-3"></i>To Increase Confidence </li>
                                </ul>
					</div>
				</div>
				<div class="col-lg-6 left-img-agikes mt-lg-0 mt-sm-4 mt-3 text-right">
                <img src="images/ab.png" alt="" class="img-fluid" style="WIDTH: 446PX;HEIGHT: 354PX;">
				</div>
			</div>
		</div>
	</div>
	<!-- //about -->
 
 <!-- Stats-->
	<div class="stats-w3layouts py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="stats-info">
				<div class="row">
					<div class="col-md-3 col-6 stats-grid-w3-agile text-center px-xl-5 px-3">
						<div class='numscroller font-weight-bold my-2' data-slno='1' data-min='0' data-max='450' data-delay='.5' data-increment="4">450</div>
						<p class="text-uppercase text-white border-top pt-4 mt-3">students</p>
					</div>
					<div class="col-md-3 col-6 stats-grid-w3-agile text-center  px-xl-5 px-3">
						<div class='numscroller font-weight-bold my-2' data-slno='1' data-min='0' data-max='3' data-delay='.2' data-increment="1">3</div>
						<p class="text-uppercase text-white border-top pt-4 mt-3">branches</p>
					</div>
					<div class="col-md-3 col-6 stats-grid-w3-agile text-center mt-md-0 mt-5  px-xl-5 px-3">
						<div class='numscroller font-weight-bold my-2' data-slno='1' data-min='0' data-max='32' data-delay='.2' data-increment="1">32</div>
						<p class="text-uppercase text-white border-top pt-4 mt-3">teachers</p>
					</div>
					<div class="col-md-3 col-6 stats-grid-w3-agile text-center mt-md-0 mt-5  px-xl-5 px-3">
						<div class='numscroller font-weight-bold my-2' data-slno='1' data-min='0' data-max='1500' data-delay='.5' data-increment="10">1500</div>
						<p class="text-uppercase text-white border-top pt-4 mt-3">lectures</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Stats -->

    <!-- course-->
	<div class="classes py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-light text-dark text-center mb-sm-5 mb-4">courses
				<span class="font-weight-bold">offered</span>
			</h3>
			<div class="row pt-4">
				<div class="col-lg-4 col-news-top text-center">
					<!-- Left to right -->
					<!-- normal -->
					<div class="ih-item circle effect16 left_to_right mx-auto">
						<a href="Courses.aspx">
							<div class="img">
								<img src="images/c1.jpg" alt="img" class="img-fluid rounded-circle">
							</div>
							<div class="info">
								<h3 class="text-capitalize text-white">SSC</h3>
								<p>Description goes here</p>
							</div>
						</a>
					</div>
					<h6 class="small-heading text-capitalize text-center mt-4">
						<a href="Courses.aspx" class="text-dark">SSC
							<i class="fas fa-long-arrow-alt-right ml-1"></i>
						</a>
					</h6>
					<!-- end normal -->
					<!-- end Left to right -->
				</div>
				<div class="col-lg-4 col-news-top text-center my-lg-0 my-sm-5 my-4">
					<!-- Left to right -->
					<!-- normal -->
					<div class="ih-item circle effect16 left_to_right mx-auto">
						<a href="Courses.aspx">
							<div class="img">
								<img src="images/c2.jpg" alt="img" class="img-fluid rounded-circle">
							</div>
							<div class="info">
								<h3 class="text-capitalize text-white">Commerce</h3>
								<p>Description goes here</p>
							</div>
						</a>
					</div>
					<h6 class="small-heading text-capitalize text-center mt-4">
						<a href="Courses.aspx" class="text-dark">Commerce
							<i class="fas fa-long-arrow-alt-right ml-1"></i>
						</a>
					</h6>
					<!-- end normal -->
					<!-- end Left to right -->
				</div>
				<div class="col-lg-4 col-news-top text-center">
					<!-- Left to right -->
					<!-- normal -->
					<div class="ih-item circle effect16 left_to_right mx-auto">
						<a href="Courses.aspx">
							<div class="img">
								<img src="images/c3.jpg" alt="img" class="img-fluid rounded-circle">
							</div>
							<div class="info">
								<h3 class="text-capitalize text-white">Science</h3>
								<p>Description goes here</p>
							</div>
						</a>
					</div>
					<h6 class="small-heading text-capitalize text-center mt-4">
						<a href="Courses.aspx" class="text-dark">Science
							<i class="fas fa-long-arrow-alt-right ml-1"></i>
						</a>
					</h6>
					<!-- end normal -->
					<!-- end Left to right -->
				</div>
			</div>
		</div>
	</div>
	<!-- //course -->

</asp:Content>

