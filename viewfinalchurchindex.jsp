<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>General church membership</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "finalchurch1";
String userid = "root";
String password = "Sweetmom1844.";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h1>Biodata and Profession</h1>
<table border="1">
<tr>
<td>Id</td>
<td>First Name</td>
<td>Middle Name</td>
<td>Surname</td>
<td>Gender</td>
<td>Date of Birth</td>
<td>Marital Status</td>
<td>Church Family</td>
<td>Place of Residence</td>
<td>Highest level of Education Attained</td>
<td>Profession</td>
<td>Occupation</td>
<td>Place of Work</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from generalmembership";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("middlename") %></td>
<td><%=resultSet.getString("surname") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("dateofbirth") %></td>
<td><%=resultSet.getString("maritalstatus") %></td>
<td><%=resultSet.getString("churchfamily") %></td>
<td><%=resultSet.getString("placeofresidence") %></td>
<td><%=resultSet.getString("highestlevelofeducation") %></td>
<td><%=resultSet.getString("profession") %></td>
<td><%=resultSet.getString("occupation") %></td>
<td><%=resultSet.getString("placeofwork") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<br>
<h1>Baptised Members</h1>
<table border="1">
<tr>
<td>Id</td>
<td>First Name</td>
<td>Middle Name</td>
<td>Surname</td>
<td>Gender</td>
<td>Name of Pastor who Baptised</td>
<td>Date of Baptism</td>
<td>Place of Baptism</td>
<td>Former Religion</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from baptisedmembers";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("middlename") %></td>
<td><%=resultSet.getString("surname") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("nameofpastorwhobaptised") %></td>
<td><%=resultSet.getString("dateofbaptism") %></td>
<td><%=resultSet.getString("placeofbaptism") %></td>
<td><%=resultSet.getString("formerreligion") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<h1>Children's Section</h1>
<table border="1">
<tr>
<td>Id</td>
<td>First Name</td>
<td>Middle Name</td>
<td>Surname</td>
<td>Gender</td>
<td>Date of Birth</td>
<td>Father's Name</td>
<td>Mother's Name</td>
<td>Church Family you belong to</td>
<td>Place of Residence</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from childrensection";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("middlename") %></td>
<td><%=resultSet.getString("surname") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("dateofbirth") %></td>
<td><%=resultSet.getString("fathersname") %></td>
<td><%=resultSet.getString("mothersname") %></td>
<td><%=resultSet.getString("churchfamilyyoubelongto") %></td>
<td><%=resultSet.getString("placeofresidence") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<h1>Church Departments</h1>
<table border="1">
<tr>
<td>Id</td>
<td>Name of Department</td>
<td>Elder in charge of Department</td>
<td>Head of Department</td>
<td>Assistant</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from churchdepartments";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("nameofdepartment") %></td>
<td><%=resultSet.getString("elderincharge") %></td>
<td><%=resultSet.getString("headofdepartment") %></td>
<td><%=resultSet.getString("assistant") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<h1>Church Families</h1>
<table border="1">
<tr>
<td>Id</td>
<td>Church Family Name</td>
<td>Elder in charge of Family</td>
<td>Family Head</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from churchfamily";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("churchfamilyname") %></td>
<td><%=resultSet.getString("elderinchargeoffamily") %></td>
<td><%=resultSet.getString("familyhead") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<h1>Fellowship Groups</h1>
<table border="1">
<tr>
<td>Id</td>
<td>First Name</td>
<td>Middle Name</td>
<td>Surname</td>
<td>Gender</td>
<td>Name of Fellowship</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from fellowshipgroups";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("middlename") %></td>
<td><%=resultSet.getString("surname") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("nameoffellowship") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
</body>
</html>