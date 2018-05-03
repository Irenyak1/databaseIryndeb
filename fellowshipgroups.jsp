<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fellowship Groups</title>
</head>
<body>
<h1>Members of the Fellowship Group</h1>
<form method = "post" action="fellowshipgrp.jsp">
<label> First Name</label>
<input type = "text" name = "firstname"/>
<br>
<br>
<label> Middle Name</label>
<input type = "text" name = "middlename"/>
<br>
<br>
<label> Surname</label>
<input type = "text" name = "surname"/>
<br>
<br>
<label> Gender</label>
<input type = "text" name = "gender"/>
<br>
<br>
<label> Name of Fellowship</label>
<input type = "text" name = "nameoffellowship"/>
<br>
<br>
<input type = "submit" value = "Submit"/>
<br>
</form>
</body>
</html>