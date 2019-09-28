<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("userName");  
	out.println(userName);
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sofia","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from inframind_login where username='" + "Dhanashree" + "' and password='" +"DSB@123"+ "'");
    //out.println(rs.next()+"\n");
    if (rs.next()) {
        session.setAttribute("userid", userName);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    
%>
<!--  -->