<%@page import="java.sql.*,java.util.*"%>
<%
    String sr_no_temp=request.getParameter("sr_no");
    int sr_no=Integer.parseInt(sr_no_temp);
    try{
              Class.forName("com.mysql.jdbc.Driver");
              java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courtyard_shelter","root","");
              Statement st= con.createStatement();
              ResultSet rs;

              st.executeUpdate("DELETE  FROM children_record WHERE sr_no="+sr_no);
              response.setStatus(response.SC_MOVED_TEMPORARILY);
              response.setHeader("Location", "view_childrens_record.html");
    }catch(Exception e){
        out.print("Error=="+e);
    }
%>