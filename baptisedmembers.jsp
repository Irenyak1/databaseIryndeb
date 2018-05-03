<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Baptised members</title>
</head>
<body>
<h1>Baptised Members</h1>
<form method = "post" action="baptisedm.jsp">
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
<label> Name of Pastor who baptised</label>
<input type = "text" name = "nameofpastorwhobaptised"/>
<br>
<br>
<br>
<label>Date of baptism</label>
<input type="text" name="dateofbaptism">
<br>
<br>
<br>
<label>Place of baptism</label>
<input type = "text" name = "placeofbaptism"/>
<br>
<br>
<label>Former religion</label>
<input type = "text" name = "formerreligion"/>
<br>
<br>
<input type = "submit" value = "Submit"/>
<br>
</form>
</body>
</html>