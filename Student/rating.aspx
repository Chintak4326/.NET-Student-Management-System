<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="rating.aspx.vb" Inherits="Student_rating" %>

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
			<li class="breadcrumb-item active" aria-current="page">Ratings</li>
		</ol>
	</nav>
	<!-- breadcrumb -->

    <!-- feedback -->
    
    <div class="feedback-grids1 py-5">
            <div class="row " style="margin-top: 50px">
                <div class="col-md-6 col-md-offset-3 form-container"style="margin-left: 350px;margin-top: -25px;">
                    <h3 class="title text-capitalize font-weight-bold text-center mb-5"style="margin-top: -30px;">Ratings</h3>
                    <p style="padding-bottom: -20px;"><br />
                     <div style="width: 692px;height: 275px;border: 2px solid #000;margin-bottom: 58px;margin-left: 0px;padding-left: 13px;padding-top: 70px;padding-bottom: 0px;margin-top: -28px;">
                    <p style="margin-top: -56px;"> Please provide your ratings below: </p><br />
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

                         <div class="contact-me animated wow slideInUp form-group"style="margin-top: -10px;">
                               <asp:Label ID="Label2" runat="server" Text="Comments" Font-Bold="True">Ratings:</asp:Label>
                              <asp:DropDownList ID="rating" runat="server">
    <asp:ListItem Enabled="true" Text="Select Ratings" Value="-1"></asp:ListItem>
    <asp:ListItem Text="★" Value="1"></asp:ListItem>
    <asp:ListItem Text="★★" Value="2"></asp:ListItem>
    <asp:ListItem Text="★★★" Value="3"></asp:ListItem>
    <asp:ListItem Text="★★★★" Value="4"></asp:ListItem>
    <asp:ListItem Text="★★★★★" Value="5"></asp:ListItem>
</asp:DropDownList>
                             <asp:RequiredFieldValidator ID="ReqMonth" runat="server" ControlToValidate="rating"
    InitialValue="-1">
</asp:RequiredFieldValidator>
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
                        <asp:Button ID="Button1" class="btn btn-primary w-md waves-effect waves-light" style="height: 40px; width: 661px; margin-top: 121px;" runat="server" Text="Post"  Font-Bold="True" />
					</div>
                </div>
            </div>
    </div>
    <!-- //feedback -->
</div>
</asp:Content>

