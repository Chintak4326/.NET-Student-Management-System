<%@ Page Title="" Language="VB" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="false" CodeFile="gallery.aspx.vb" Inherits="Student_gallery" %>

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
			<li class="breadcrumb-item active" aria-current="page">Gallery</li>
		</ol>
	</nav>
	<!-- breadcrumb -->
    <section class="gallery py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-light text-dark text-center mb-5"style="margin-top:-50px;">our
				<span class="font-weight-bold">gallery</span>
			</h3>
		</div>
	</section>
   
   <!-- gallery -->
	
	<!--//gallery-->
    
    <div class="inner-sec pt-md-4" style="margin-top: -118px;">
    <div class="row proj_gallery_grid" style="margin-left: 27px;">
        <%--<%
                Dim dm As New DataManager
        Dim dtFeatured As Data.DataTable = dm.getdata("Select * from Gallery Order by Gallery_id desc")
                For Each dr As Data.DataRow In dtFeatured.Rows%>--%>

					<div class="col-sm-4 section_1_gallery_grid">
						<div class="section_1_gallery_grid1">
                                 
                           <%--<%--
                                 Dim dtimage As Data.DataTable = dm.getdata("Select * from Gallery where Gallery_id=" & dr.Item(0))
                                 %>
                                 --%>
                          &nbsp;
							<asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                                    RepeatDirection="Horizontal" CellSpacing="-1">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="190px" 
                                            ImageUrl='<%# Eval("name","~/Admin/img/{0}") %>' Width="256px" />
                                    </ItemTemplate>
                                    <SelectedItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                        Font-Strikeout="False" Font-Underline="False" />
                                </asp:DataList>
							</div>
						</a>
					</div>
					
				</div>
        </div>
    <br />
     <br />
</asp:Content>

