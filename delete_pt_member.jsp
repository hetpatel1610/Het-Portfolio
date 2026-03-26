<%@page import="java.sql.*"%>

<%
String contact1 = request.getParameter("contact1");

try{
Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement(
"DELETE FROM pt_members WHERE contact1=?");

ps.setString(1, contact1);

int i = ps.executeUpdate();

if(i>0){
    response.sendRedirect("Gym_member_record.jsp?msg=Deleted Successfully");
}else{
    response.sendRedirect("Gym_member_record.jsp?msg=Delete Failed");
}

con.close();

}catch(Exception e){
out.println("Error: "+e);
}
%>