<%@page import="com.FinAssist.Model.Wages"%>
<%@page import="com.FinAssist.Model.wageid"%>
<%@page import="com.FinAssist.Dao.DataBase"%>
<%@page import="com.FinAssist.Model.Products"%>
<%@page import="com.FinAssist.Model.UserId"%>
<%@ include file="components/common_cs_js.jsp"%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<body style="background-color: #fefbd8 ">


<%
	wageid user2 = (wageid) session.getAttribute("keyUser1");
	%>


<title>Welcome</title>
</head>
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
	background-color: #fefbd8;
}
</style>
<body>


	<br>
	<br>

	<h1 style="color: blue;"><center>↓ Enter Details Below ↓</center></h1>

	
	<%--<
	UserId user = (UserId) session.getAttribute("keyUser");
		%>--%>

	

<style>
.button {
  background-color: #00ff00; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button4 {
  background-color: white;
  color: black;
  border: 2px solid #e7e7e7;
}

.button5 {
  background-color: white;
  color: black;
  border: 2px solid #555555;
}
</style>
		<center>
		<a href="view-wage.jsp"><p style="color: red;"><h3>"View All Saved Wages Detail".</p></h3></a> <br> <br>

		<form action="add-wage.jsp" method="get">
			<div class="form-group">
				<label for="item">Name Of Worker</label> 
				<br><input type="text"
					 placeholder=<%=user2.userId%> id="name"
					name="txtItem">
			</div>
			<div class="form-group">
				<label for="number">Days Worked</label> 
				<br><input type="number"
					 placeholder="Enter Days" id="daysWorked"
					name="txtQuantity">
			</div>
			<div class="form-group">
				<label for="number">Enter Income</label> 
				<br><input type="number" 
					 placeholder="Enter Income" id="income"
					name="txtPrice">
			</div>



			<br> 
			
			<button type="submit" class="button"><h9 style="color: 	black;"><center>Submit</center></h9></button>
		</form>

		<br>

		<table>
		
		
		
		
		
		
		</table>

	</center>

<center><%@ include file="components/calculator.html"%></center>
</body>
</html>

<br>
<br>
<br>



      