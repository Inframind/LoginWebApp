<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@ page import="java.sql.*"%>
<%

String userName = request.getParameter("userName");
String password = request.getParameter("password");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://hello:3306/abc","root","DSB@123");
Statement st = con.createStatement();
int i = st.executeUpdate("insert into inframind_login(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','"
+ lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
if (i > 0) {
	response.sendRedirect("welcome.jsp");
	} else {
		response.sendRedirect("index.jsp");
	}
%>
</body>
</html>