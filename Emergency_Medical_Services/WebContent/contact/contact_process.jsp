
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String contact=request.getParameter("contact");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "ayush");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into contacts(name,contact)values('"+name+"','"+contact+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>