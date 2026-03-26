<%-- 
    Document   : Delete_Member.jsp
    Created on : 14-Mar-2026, 12:18:39?am
    Author     : hetpatel
--%>
<%@page import="java.sql.*"%>


<%

String sir_name = request.getParameter("sir_name");

if(sir_name != null){

    Connection con = null;
    PreparedStatement ps = null;

    try{

        Class.forName("com.mysql.cj.jdbc.Driver");

        con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

        ps = con.prepareStatement(
        "DELETE FROM members WHERE sir_name=?");

        ps.setString(1, sir_name);

        ps.executeUpdate();

    }
    catch(Exception e){
        out.println("Error : " + e);
    }
    finally{
        if(ps!=null) ps.close();
        if(con!=null) con.close();
    }

}

response.sendRedirect("Old_Member.jsp");

%>