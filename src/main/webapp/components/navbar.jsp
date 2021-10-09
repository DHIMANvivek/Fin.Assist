<%@page import="com.FinAssist.Model.Products"%>
<%@page import="com.FinAssist.Model.UserId"%>
<%@page import="com.FinAssist.Model.User"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
User user = (User) session.getAttribute("active-user");
%>

<style>
body {
	background-color: #fefbd8;
}

h1 {
	background-color: #80ced6;
}

span {
	background-color: yellow;
}

div {
	background-color: #d5f4e6;
}
</style>


<nav class="navbar navbar-expand-lg navbar-light custom-bg">

	<div class="container-fluid">
		<a class="navbar-brand" href="home.jsp"><h3>
				<i>Fin.Assist</i>
			</h3></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">




				<li class="nav-item active ml-2" data-toggle="modal"
					data-target=".aboutusmodal">
					<div class="nav-link">
						<b>About us</b>
					</div>
				</li>

				<li class="nav-item active ml-2" data-toggle="modal"
					data-target=".contactusmodal">
					<div class="nav-link">
						<b>Contact us</b>
					</div>
				</li>

			</ul>



			<%
			if (user != null) {
			%>

			<ul class="navbar-nav ml-auto">

				<%
				if (user.getUserType().equals("normal")) {
				%>

				<%
				}
				%>








			</ul>

			<%
			}

			else {
			%>
			<ul class="navbar-nav ml-auto">

				<marquee>
					<h3>By- Vivek Dhiman</h3>
				</marquee>

			</ul>

			<%
			}
			%>

		</div>
	</div>
</nav>








<!-- About us modal -->

<div class="modal fade aboutusmodal" tabindex="-1" role="dialog"
	aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header custom-bg text-white text-center">
				<h5 class="modal-title" id="exampleModalLongTitle">About Us</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container">
					<p style="font-size: 20px;">
						<b> An Fin.Assist webApp, by definition, is a web application
							that allows you to save and retrieve tangible goods,wages
							services online by adding it manually. <br> <br>
							Development of this web application is still under construction
							but we promise to make it more advance. <BR>
						<BR> <b>-VIVEK DHIMAN</b>
						</b>
					</p>
				</div>
			</div>
			<div class="modal-footer">
				<div class="text-center">
					<button type="button" class="btn custom-bg text-white"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ********** -->

<!-- Contact us modal -->

<div class="modal fade contactusmodal" tabindex="-1" role="dialog"
	aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header custom-bg text-white text-center">
				<h5 class="modal-title" id="exampleModalLongTitle">Contact Us</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container text-center">
					<p style="font-size: 23px;">
						<b> <img src="images/phonee.png" style="width: 27px;"
							alt="img">+91 6283415102 / +91 8283036601<br> <img
							src="images/emaill.png" style="width: 29px;" alt="img">googlydhiman.4236@gmail.com
						</b>
					</p>
				</div>
			</div>
			<div class="modal-footer">
				<div class="text-center">
					<button type="button" class="btn custom-bg text-white"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ********** -->


