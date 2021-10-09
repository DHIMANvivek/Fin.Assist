<%@page import="com.FinAssist.Model.Wages"%>
<%@page import="com.FinAssist.Dao.DataBase"%>
<%@page import="com.FinAssist.Model.Products"%>
<%@page import="com.FinAssist.Model.UserId"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Wages Details</title>
</head>
<body>
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


	<%
	UserId user = (UserId) session.getAttribute("keyUser");
	%>

	<center>
		<h4>Thankyou :)</h4>



		<%
		Wages product = new Wages();
		product.itemId = user.userId;

		product.items = request.getParameter("txtItem");
		product.quantity = request.getParameter("txtQuantity");
		product.price = request.getParameter("txtPrice");

		DataBase db = new DataBase();
		db.logFever1(product);
		%>

		<p>
			Your Item has been Saved In Database In Id :
			<%=product.itemId%></p>
		<br>
		<br>
		<br> <a href="view-wage.jsp"><p style="color: red;">
			<h3>
				"View All Saved Data".
				</p>
			</h3></a> <br> <br>

	</center>


</body>
</html>



