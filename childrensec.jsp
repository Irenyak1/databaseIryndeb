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
String dateofbirth = request.getParameter("dateofbirth");
String fathersname = request.getParameter("fathersname");
String mothersname = request.getParameter("mothersname");
String churchfamilyyoubelongto= request.getParameter("churchfamilyyoubelongto");
String placeofresidence= request.getParameter("placeofresidence");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalchurch1", "root", "");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into childrensection(firstname,middlename,surname,gender,dateofbirth,fathersname,mothersname,churchfamilyyoubelongto,placeofresidence)values ('"+firstname+"','"+middlename+"','"+surname+"','"+gender+"', '"+dateofbirth+"', '"+fathersname+"','"+mothersname+"','"+churchfamilyyoubelongto+"','"+placeofresidence+"')");
	out.println("Thanks for registering!");
}

catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}

%>
