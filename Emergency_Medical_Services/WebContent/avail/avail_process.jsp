<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="avail.jsp" method="post">

<%
					String driverName = "com.mysql.jdbc.Driver";
						String connectionUrl = "jdbc:mysql://localhost:3306/";
						String dbName="demo";
						String userId = "root";
						String password = "ayush";
						String var_vech_type=request.getParameter("vehicle_type");

						try {
							Class.forName(driverName);
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}

						Connection connection = null;
						Statement statement = null;
						ResultSet resultSet = null;
				%>
				<h2 align="center">
					<font color="#FF00FF"><strong>Your Driver details</strong></font>
				</h2>
				<table align="center" cellpadding="4" cellspacing="4">
					<tr>

					</tr>
					<tr bgcolor="#008000">
						
						<td><b>Name</b></td>
						<td><b>Phone No</b></td>
						<td><b>Vehicle No </b></td>
						<td><b>Vehicle Type</b></td>
						
					</tr>
					<%
						try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String sql = "SELECT first_name,phone_no,vehicle_no,vehicle_type FROM demo.users where vehicle_type='" + var_vech_type + "'" + " limit 1;";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
					%>
					<tr bgcolor="#8FBC8F">

						
						<td><%=resultSet.getString(1)%></td>
						<td><%=resultSet.getString(2)%></td>
						<td><%=resultSet.getString(3)%></td>
						<td><%=resultSet.getString(4)%></td>
					


					</tr>

					<%
						}

					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</table>
				
				    <button type="Back" class="btn btn-primary">Back</button>
</form>

</body>
</html>