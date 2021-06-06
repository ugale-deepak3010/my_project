<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
    Connection con=null;
    Statement st=null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_record","root","");
    st=con.createStatement();
    }catch(Exception e){
        out.print("dbconnect is error="+e);
    }
%>