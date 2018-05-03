<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>General church membership</title>
</head>
<body>
<h1>Biodata and Profession</h1>
<br>
<form method = "post" action="combinememberneduc.jsp">
<fieldset> 
<legend style="font-size:25px">Biodata:</legend>
<br>
<label> First Name</label>
<input type = "text" name = "firstname"/>
<br>
<br>
<label> Middle Name</label>
<input type = "text" name = "middlename"/>
<br>
<br>
<label> Surname</label>
<input type = "text" name = "Surname"/>
<br>
<br>
<label> Gender</label>
<input type = "text" name = "gender"/>
<br>
<br>
<label> Date of birth</label>
<input type = "text" name = "dateofbirth"/>
<br>
<br>
<label> Marital Status</label>
<input type = "text" name = "maritalstatus"/>
<br>
<br>
<label> Church family</label>
<input type = "text" name = "churchfamily"/>
<br>
<br>
<label> Place of Residence</label>
<input type = "text" name = "placeofresidence"/>
</fieldset>
<br>
<fieldset>
<legend style="font-size:25px">Education and Profession:</legend>
<br>
<label> Highest level of Education Attained</label>
<input type = "text" name = "highestlevelofeducation"/>
<br>
<br>
<label> Profession</label>
<input type = "text" name = "profession"/>
<br>
<br>
<label> Occupation</label>
<input type = "text" name = "occupation"/>
<br>
<br>
<label>Place of Work</label>
<input type = "text" name = "placeofwork"/>
<br>
<br>
</fieldset>
<br>
<br>
<input type = "submit" value = "Submit"/>
<br>
</form>
</body>
</html>