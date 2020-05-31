<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="Changepassword.aspx.vb" Inherits="Student_Changepassword" %>

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
			<li class="breadcrumb-item active" aria-current="page">Change Password</li>
		</ol>
	</nav>
	<!-- breadcrumb -->
    <br />
    <br />
    <br />
     <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Change 
				<span class="font-weight-bold">Password</span>
			</h3>
            <br />
            <br />
            <div style="width:681px;height:422px;border: 2px solid #000;margin-left: 338px;margin-bottom: 70px;background-image:url(images/loginbg.jpg);">
     <div class="box-lg" style="padding: 30px;">
                    <div class="row" data-gutter="100">
                        <div class="col-md-8"style="margin-top: 4px;">
                           
                      
                          
                           <div class="form-group">
                                <label style="color:white">Old Password</label>
                                <asp:TextBox class="form-control" ID="txtUserEmail" style="width: 614px;" runat="server" TextMode="Password"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserEmail" ErrorMessage="Old Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                   </div>
                                   
                                 
                            <div class="form-group">
                                <label style="color:white">New Password</label>
                                <asp:TextBox class="form-control" ID="txtPassword" style="width: 614px;" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="New Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="Regex2" style="margin-left: -190px;" runat="server" ControlToValidate="txtPassword"
                             ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
                             ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="Red" />      
                             </div>
                            <div class="form-group">
                                <label style="color:white">Confirm Password</label>
                                <asp:TextBox class="form-control" ID="TextBox1" style="width: 614px;" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" style="margin-left: -212px;" runat="server" ControlToCompare="txtPassword" ControlToValidate="TextBox1" ErrorMessage="New password &amp; confirm password do not match" ForeColor="Red"></asp:CompareValidator>
                          
                                 </div>
                           
                            <asp:Button ID="btnInsert" class="btn btn-primary" style="margin-left: 456px;margin-top:-13px;" runat="server" Text="Change Password" />
                        </div>

                    </div>
                </div>
                </div>
</asp:Content>

