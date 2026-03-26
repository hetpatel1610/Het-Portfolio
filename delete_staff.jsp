<%-- 
    Document   : delete_staff
    Created on : 24-Mar-2026, 11:05:48?pm
    Author     : hetpatel
--%>

<%@page import="java.sql.*"%>

<%
String email = request.getParameter("email");

try{
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

    PreparedStatement ps = con.prepareStatement(
        "DELETE FROM gym_staff WHERE email=?");

    ps.setString(1, email);

    int i = ps.executeUpdate();

    if(i>0){
        response.sendRedirect("Gym_staff.jsp?msg=Deleted Successfully");
    }else{
        response.sendRedirect("Gym_staff.jsp?msg=Delete Failed");
    }

    con.close();

}catch(Exception e){
    out.println(e);
}
%>