<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<%
    try{
    String officer_id_temp= (String)session.getAttribute("officer_id");
    int officer_id=Integer.parseInt(officer_id_temp);
    
    String fname=request.getParameter("first_name");
    String lname=request.getParameter("last_name");
    String phone=request.getParameter("phone");
    String height0=request.getParameter("height");
    int height=Integer.parseInt(height0);
    String weight0=request.getParameter("weight");
    int weight=Integer.parseInt(weight0);
    String ph=request.getParameter("ph");
    String nick_name=request.getParameter("nick_name");
    String address=request.getParameter("address");
    String gender=request.getParameter("gender");
    String middle_name=request.getParameter("middle_name");
    String fav_food=request.getParameter("fav_food");
    String dob=request.getParameter("dob");
    String email=request.getParameter("email");
    
    
 
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courtyard_shelter","root","");
Statement st= con.createStatement();


              ResultSet rs;
              int count=0;
              rs=st.executeQuery("SELECT COUNT(officer_id) FROM children_record WHERE officer_id="+officer_id);
              //rs.next();
              //
              while(rs.next()){
                count=rs.getInt(1);  //Very Important
              }
             int roll_no=count+1;
String qry8="INSERT INTO children_record VALUES(null,"+roll_no+",'"+fname+"','"+middle_name+"','"+lname+"','"+nick_name+"','"+height+"','"+weight+"','"+address+"','"+gender+"','"+phone+"','"+email+"','"+dob+"','"+fav_food+"','"+ph+"',"+officer_id+")";
st.executeUpdate(qry8);
response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", "view_childrens_record.html");
    }catch(Exception e){
        out.print("Error=="+e);
    }
%>