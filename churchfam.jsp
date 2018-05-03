<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*, java.util.*"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
String churchfamilyname = request.getParameter("churchfamilyname");
String elderinchargeoffamily = request.getParameter("elderinchargeoffamily");
String familyhead = request.getParameter("familyhead");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalchurch1", "root", "");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into churchfamily(churchfamilyname,elderinchargeoffamily,familyhead)values ('"+churchfamilyname+"','"+elderinchargeoffamily+"','"+familyhead+"')");
	out.println("Welcome family member!");
}

catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}

%>
