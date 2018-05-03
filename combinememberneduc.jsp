<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*, java.util.*"%>
<%@ page import = "java.util.Date" %>
<%
String firstname = request.getParameter("firstname");
String middlename = request.getParameter("middlename");
String surname = request.getParameter("surname");
String gender = request.getParameter("gender");
String dateofbirth = request.getParameter("dateofbirth");
String maritalstatus = request.getParameter("maritalstatus");
String churchfamily= request.getParameter("churchfamily");
String placeofresidence= request.getParameter("placeofresidence");
String highestlevelofeducation = request.getParameter("highestlevelofeducation");
String profession = request.getParameter("profession");
String occupation = request.getParameter("occupation");
String placeofwork = request.getParameter("placeofwork");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalchurch1", "root", "Sweetmom1844.");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into generalmembership(firstname,middlename,surname,gender,dateofbirth,maritalstatus,churchfamily,placeofresidence,highestlevelofeducation,profession,occupation,placeofwork)values ('"+firstname+"','"+middlename+"','"+surname+"','"+gender+"', '"+dateofbirth+"', '"+maritalstatus+"','"+churchfamily+"','"+placeofresidence+"','"+highestlevelofeducation+"','"+profession+"','"+occupation+"','"+placeofwork+"')");
	out.println("Thanks for registering!");
}

catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>
