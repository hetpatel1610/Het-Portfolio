<%@page import="java.sql.*"%>

<%
String sir_name = request.getParameter("sir_name");
String first_name = request.getParameter("first_name");
String email = request.getParameter("email");
String city = request.getParameter("city");
int weight = Integer.parseInt(request.getParameter("weight"));
int height = Integer.parseInt(request.getParameter("height"));
String contact1 = request.getParameter("contact1");

try{

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement(
"UPDATE pt_members SET sir_name=?, first_name=?, email=?, city=?, weight=?, height=? WHERE contact1=?");

ps.setString(1, sir_name);
ps.setString(2, first_name);
ps.setString(3, email);
ps.setString(4, city);
ps.setInt(5, weight);
ps.setInt(6, height);
ps.setString(7, contact1);

int i = ps.executeUpdate();

if(i>0){
    response.sendRedirect("Gym_member_record.jsp?msg=Updated Successfully");
}else{
    response.sendRedirect("Gym_member_record.jsp?msg=Update Failed");
}

con.close();

}catch(Exception e){
out.println("Error: "+e);
}
%>