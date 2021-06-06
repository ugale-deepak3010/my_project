<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<%
    String fname=request.getParameter("fname");
    String hid_temp=request.getParameter("hid");
    int hid=Integer.parseInt(hid_temp);
    String lname=request.getParameter("lname");
    String prn_temp=request.getParameter("prn");
    int prn=Integer.parseInt(prn_temp);
    String height=request.getParameter("height");
    String weight=request.getParameter("weight");
    String pc=request.getParameter("ph");
    String comment=request.getParameter("comment");
    String favor=request.getParameter("favor");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_record","root","");
Statement st= con.createStatement();
String qry8="UPDATE student_record SET first_name='"+fname+"',last_name='"+lname+"',prn='"+prn+"',height="+height+",weight='"+weight+"',favor='"+favor+"',physical_challenge='"+pc+"',comment='"+comment+"' WHERE health_id='"+hid+"'";
st.executeUpdate(qry8);

response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", "view_student_data.html");
         
    }catch(Exception e){
        out.print("Error=="+e);
    }
%>