<%@page import="com.FinAssist.Model.wageid"%>
<%@page import="com.FinAssist.Model.Wages"%>
<%@page import="com.FinAssist.Model.Products"%>
<%@page import="com.FinAssist.Dao.DataBase"%>
<%@page import="com.FinAssist.Model.UserId"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<body style="background-color: #FFFDB8;">
	<!DOCTYPE html>
<html>
<head>
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
<style>
div.ex1 {
	border-style: solid;
	border-color: #0000ff;
}

td.ex2 {
	border-style: solid;
	border-color: #ff0000 #0000ff;
}

div.ex3 {
	border-style: solid;
	border-color: #ff0000 #00ff00 #0000ff;
}

div.ex4 {
	border-style: solid;
	border-color: #ff0000 #00ff00 #0000ff rgb(250, 0, 255);
}
</style>

<meta charset="UTF-8">
<title>Products</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

	<%
	wageid user2 = (wageid) session.getAttribute("keyUser1");
	Wages product = new Wages();
	user2._id = product.name;
	DataBase db = new DataBase();
	%>



	<div class="container">
		<br>
		<center>
			<input id="myInput" type="text" placeholder="Search for Expenses...">
		</center>

		<marquee>
			<h2>Thankyou & Note : We Promise Not To Save Your Data In Our
				DataBase After You Deleted :) :)</h2>
		</marquee>
		<center>
			<h2>Wage Records</h2>
		</center>
		<div class="ex3">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Date Time</th>
						<th>Name</th>
						<th>Day Worked</th>
						<th>Income</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody id="myTable">
					</div>

					<%
					ArrayList<Wages> prode = db.fetchProducts1(user2.userId);
					user2._id = product.name;
					for (Wages pro1 : prode) {
					%>

					<tr>

						<td class="ex2"><%=pro1.dateTimeStamp%></td>
						<td class="ex2"><%=pro1.name%></td>
						<td class="ex2"><%=pro1.daysWorked%></td>
						<td class="ex2"><%=pro1.income%></td>
						<td class="ex2">
					</tr>

					<%
					}
					%>

				</tbody>
			</table>
		</div>
		<script>
			$(document)
					.ready(
							function() {
								$("#myInput")
										.on(
												"keyup",
												function() {
													var value = $(this).val()
															.toLowerCase();
													$("#myTable tr")
															.filter(
																	function() {
																		$(this)
																				.toggle(
																						$(
																								this)
																								.text()
																								.toLowerCase()
																								.indexOf(
																										value) > -1)
																	});
												});
							});
		</script>
</body>
</html>