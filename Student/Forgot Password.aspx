<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="Forgot Password.aspx.vb" Inherits="Student_Forgot_Password" %>

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
			<li class="breadcrumb-item active" aria-current="page">Forgot Password</li>
		</ol>
	</nav>
	<!-- breadcrumb -->
   
    <br />
    <br />
    <br />
    <h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Forgot 
				<span class="font-weight-bold">Password?</span>
			</h3>
            <br />
            
            <div style="width:671px;height:174px;border: 2px solid #000;margin-bottom:70px;margin-right:0px;margin-left:343px;margin-top:0px;background-image:url(images/forgotpassword.jpg);">
     
     <div class="box-lg" style="padding: 48px;margin-top: 2px;margin-left: 60px;">
                    <div class="row" data-gutter="100">
                        <div class="col-md-8"style="margin-bottom: -22px;">
                           
                      
                          <%-- <div class="form-group">
                                  <div class="form-group">
                                <label>Enrollment Id</label>
                                <asp:TextBox class="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1FirstName" runat="server" ErrorMessage="Enrollment Id is required" ForeColor="red" ControlToValidate="txtEmail" Text="*Enrollment Id is required"></asp:RequiredFieldValidator>
						 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Only Numbers" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                     
                           </div>--%>
                            <div class="form-group"style="margin-right: -117px;margin-left: 3px;margin-top: -17px;">
                            <label style="margin-top: -16px;margin-right: 6px;margin-left: -87px;color:White;">Enter your e-mail address below to reset your password.</label>
                            <asp:TextBox ID="TextBox1" class="form-control" placeholder="Email Id" style="border: 1px solid #000;margin-top: 12px;margin-left: -88px;width: 620px;height: 41px;margin-right: 0px;" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="margin-left: -87px;" runat="server" ControlToValidate ="Textbox1" ErrorMessage="Email id is required" ForeColor="red" ></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" style="margin-left: -142px;" runat="server" ErrorMessage="Invalid Email Id" ForeColor="red" ControlToValidate="TextBox1"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               
                        </div>
                           
                            </div>
                           <br />
               <div class="form-group text-center m-t-20">
                                <div class="col-xs-12"style="margin-right: 421px;">
                                    <asp:Button ID="btnForgotPassword" class="btn btn-primary w-md waves-effect waves-light" style="margin-top: -1px;margin-bottom: -39px;margin-left: 480px;width: 70px;" runat="server" Text="Next" />
                                   <%-- <asp:Button ID="Button1" class="btn btn-primary w-md waves-effect waves-light" style="margin-left: 300px;" runat="server" Text="Cancel" />--%>
                                   <%-- <asp:Button ID="btnForgotPassword" class="btn btn-primary w-md waves-effect waves-light" style="margin-top: -1px;margin-bottom: -39px;margin-left: 480px;width: 70px;" runat="server" Text ="Next" />
                                    <asp:Button ID="Button1" class="btn btn-primary w-md waves-effect waves-light" runat="server" Text="Cancel" />--%>
                               <br />
                                    <br />
                                     </div>

                   

                            </div>

                    </div>
                </div>
                </div>
                </body>

</asp:Content>

