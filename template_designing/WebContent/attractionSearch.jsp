<%@page import="digimation.vacationrental.bean.AttractionBean"%>
<%@page import="digimation.vacationrental.bean.CarDetailsBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="digimation.vacationrental.bean.HotelDetailsBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Attraction</title>
</head>
<%@include file="header2.jsp"%>
<body>

	<section id="page-header" class="section background">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h3>
					Attraction of
					<%=request.getAttribute("search")%></h3>
			</div>
		</div>
		<!-- end row -->
	</div>
	<!-- end container --> </section>
	<!-- end section -->




	<section class="section clearfix">
	<div class="container">
		<div class="row">
			<%
				List<AttractionBean> listOfAttraction = (ArrayList) request.getAttribute("listOfAttraction");
				if (listOfAttraction != null) {
			%>
			<div id="fullwidth" class="col-sm-12">
				<!-- START CONTENT -->
				<div class="row">
					<%
						for (int i = 0; i < listOfAttraction.size(); i++) {

								AttractionBean attractionBean = listOfAttraction.get(i);
					%>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="post-wrapper clearfix border-bottom">
							<div class="hotel-wrapper">
								<div class="post-media">
									<a
										href="attractionFullInfo?attractionId=<%=attractionBean.getAttraction_id()%>"><img
										src="upload/attraction/<%=attractionBean.getPhoto_name()%>"
										alt="Image" height="300px" width="300px"></a>
								</div>
								<!-- end media -->
								<div class="post-title clearfix">
									<div class="pull-left">
										<h5>
											<a
												href="attractionFullInfo?attractionId=<%=attractionBean.getAttraction_id()%>"
												title=""><%=attractionBean.getAttraction_name()%></a>
										</h5>
										<span>(<%=attractionBean.getCity_name()%>)
										</span>
									</div>
									<!-- end left -->
								</div>
								<!-- end title -->
								<span class="rating"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i>
								</span>
								<!-- end rating -->
								<p><%=attractionBean.getDescription()%></p>
							</div>
							<!-- end hotel-wrapper -->
						</div>
						<!-- end post-wrapper -->
					</div>
					<!-- end col -->
					<%
						}
					%>
				</div>
				<!-- end row -->
				<!-- END CONTENT -->
			</div>
			<!-- end fullwidth -->
			<%
				} else {
			%>
			<h3>Data not found...</h3>
			<%
				}
			%>
		</div>
		<!-- end row -->
	</div>
	<!-- end container --> </section>
	<!-- end section -->



	<!-- Template core JavaScript's
    ================================================== -->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/retina.js"></script>
	<script src="js/sidebar.js"></script>
	<script src="js/circle.js"></script>
	<script src="js/progress.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/parallax.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="js/custom.js"></script>

	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="js/revslider.js"></script>
</body>
<%@include file="footer.jsp"%>
</html>