<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*, java.util.*"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
String firstname = request.getParameter("firstname");
String middlename = request.getParameter("middlename");
String surname = request.getParameter("surname");
String gender = request.getParameter("gender");
String nameofpastorwhobaptised = request.getParameter("nameofpastorwhobaptised");
String dateofbaptism = request.getParameter("dateofbaptism");
String placeofbaptism = request.getParameter("placeofbaptism");
String formerreligion= request.getParameter("formerreligion");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalchurch1", "root", "");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into baptisedmembers(firstname,middlename,surname,gender,nameofpastorwhobaptised,dateofbaptism,placeofbaptism,formerreligion)values ('"+firstname+"','"+middlename+"','"+surname+"','"+gender+"','"+nameofpastorwhobaptised+"', '"+dateofbaptism+"', '"+placeofbaptism+"','"+formerreligion+"')");
	out.println("Thanks for getting baptized!");
}

catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}

%>
