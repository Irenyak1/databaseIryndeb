<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*, java.util.*"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
String nameofdepartment = request.getParameter("nameofdepartment");
String elderincharge = request.getParameter("elderincharge");
String headofdepartment = request.getParameter("headofdepartment");
String assistant = request.getParameter("assistant");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalchurch1", "root", "Sweetmom1844.");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into churchdepartments(nameofdepartment,elderincharge,headofdepartment,assistant)values ('"+nameofdepartment+"','"+elderincharge+"','"+headofdepartment+"','"+assistant+"')");
	out.println("Welcome departmental!");
}

catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}

%>