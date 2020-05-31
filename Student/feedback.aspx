<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="Student_feedback" %>

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
			<li class="breadcrumb-item active" aria-current="page">Feedback</li>
		</ol>
	</nav>
	<!-- breadcrumb -->

    <!-- feedback -->
    <div class="feedback-grids1 py-5">
            <div class="row " style="margin-top: 50px">
                <div class="col-md-6 col-md-offset-3 form-container"style="margin-left:350px">
                    <h3 class="title text-capitalize font-weight-bold text-center mb-5"style="margin-top: -30px;">Feedback</h3>
                    <p>
                    <p> Please provide your feedback below: </p>
                   <%-- <div class="row">
						<div class="col-md-6 col-sm-6 feedback- form-group">
                            <asp:Label ID="Label1" runat="server" Text="How do you rate your overall experience?"></asp:Label>
                                <p>
                                    <label class="radio-inline">
                                        <asp:RadioButton ID="RadioButton1" runat="server" Text="bad" GroupName="bad" /> 
                                    </label>
                                    <label class="radio-inline">
                                        <asp:RadioButton ID="RadioButton2" runat="server" Text="average" GroupName="bad" />
                                        </label>
                                    <label class="radio-inline">
                                        <asp:RadioButton ID="RadioButton3" runat="server" Text="good" GroupName="bad" />
                                        </label>
                                </p>
                            </div>
                        </div>--%>
                        </p>

                         <div class="contact-me animated wow slideInUp form-group">
                               <asp:Label ID="Label2" runat="server" Text="Comments" Font-Bold="True">Comments:</asp:Label>
                               <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
					     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last Name " ForeColor="red" ControlToValidate ="TextBox1" Text ="*"></asp:RequiredFieldValidator>
						
                         </div>

                        <%-- <div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
                            <asp:Label ID="Label3" runat="server" Text="Your Name" Font-Bold="True">Date:</asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
						</div>--%>
						<%--<div class="col-md-6 col-sm-6 contact-form1 form-group">
                            <asp:Label ID="Label4" runat="server" Text="Email:" Font-Bold="True">E-mail</asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
						</div>--%>
					<%--</div>--%>

                    <div class="contact-form">
                        <asp:Button ID="Button1" class="btn btn-primary w-md waves-effect waves-light" runat="server" Text="Post" Width="653px" Height="40px" Font-Bold="True" />
					</div>
                </div>
            </div>
    </div>
    <!-- //feedback -->

</asp:Content>

