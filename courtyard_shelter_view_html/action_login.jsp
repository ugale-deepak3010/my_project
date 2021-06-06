<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%    
    String officer_id=request.getParameter("officer_id");
    String pass=request.getParameter("password");
    
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courtyard_shelter","root","");
Statement st= con.createStatement();
ResultSet rs;
rs=st.executeQuery("select * from register where officer_id='"+officer_id+"' and password='"+pass+"'");
rs.next();

if(rs.getString("password").equals(pass)&&rs.getString("officer_id").equals(officer_id))
{

    //login
         session.setAttribute("officer_id", officer_id); 
         //forwording...
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", "insert.html");   

//out.println("Welcome"+rs.getString("first_name"));
}

}catch(SQLException sqle){
   out.println("Invalid password or username."); 
}
catch (Exception e) {
out.println("Error=="+e);
e.printStackTrace();
}
finally{
    out.println("<br><a href='index.html'><< Go Back</a>");
}
%>