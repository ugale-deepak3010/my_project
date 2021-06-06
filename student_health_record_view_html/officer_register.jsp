<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("first_name");
String lname=request.getParameter("last_name");
String phone=request.getParameter("phone");
//int phoneInt = Integer.parseInt(phone);//not work because limit of int value.
String password=request.getParameter("password");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_record", "root", "");
Statement st=conn.createStatement();
String qry9="INSERT INTO register VALUES(null,'"+fname+"','"+lname+"','"+password+"','"+phone+"')";

int i=st.executeUpdate(qry9);
out.println("<h1>Successfully Registered</h1><br><a href='register_officer.jsp'><< Go Back</a>");
}
catch(Exception e)
{
out.print("Error="+e);
e.printStackTrace();
}
%>