<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Church Departments</title>
</head>
<body>
<h1>Departments of the Church</h1>
<form method = "post" action="churchdept.jsp">
<label> Name of Department</label>
<input type = "text" name = "nameofdepartment"/>
<br>
<br>
<label> Elder in charge</label>
<input type = "text" name = "elderincharge"/>
<br>
<br>
<label> Head of Department</label>
<input type = "text" name = "headofdepartment"/>
<br>
<br>
<label> Assistant</label>
<input type = "text" name = "assistant"/>
<br>
<br>
<input type = "submit" value = "Submit"/>
<br>
<br>
</form>
</body>
</html>
