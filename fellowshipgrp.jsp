<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*, java.util.*"%>
<%
String firstname = request.getParameter("firstname");
String middlename = request.getParameter("middlename");
String surname = request.getParameter("surname");
String gender = request.getParameter("gender");
String nameoffellowship = request.getParameter("nameoffellowship");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalchurch1", "root", "");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into fellowshipgroups(firstname,middlename,surname,gender,nameoffellowship('"+firstname+"','"+middlename+"','"+surname+"','"+gender+"','"+nameoffellowship+"')");
	out.println("Keep the fellowship alive!");
}

catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}

%>
