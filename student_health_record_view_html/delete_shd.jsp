<%@page import="java.sql.*,java.util.*"%>
<%
    String hid_temp=request.getParameter("hid");
    int hid=Integer.parseInt(hid_temp);
    out.print(hid);
    try{
              Class.forName("com.mysql.jdbc.Driver");
              java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_record","root","");
              Statement st= con.createStatement();
              ResultSet rs;

              st.executeUpdate("DELETE  FROM student_record WHERE health_id="+hid);
              response.setStatus(response.SC_MOVED_TEMPORARILY);
              response.setHeader("Location", "view_student_data.html");
    }catch(Exception e){
        out.print("Error=="+e);
    }
%>