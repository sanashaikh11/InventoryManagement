<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
	background: lightblue;
	
}
div{
  margin: auto;
  width: 50%;

  padding: 10px;
}
.c{

  width: 30%;
  height:20%;
  border: 3px solid black;
  padding: 30px;}
  .c2{

  width: 30%;
  height:20%;
  border: 3px solid black;
  padding: 30px;}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 
<div>
<h2>Please select a Login:</h2>
      	<input class="c" type="button" onclick="location.href='admin_reg.jsp';" value="Admin" />
			
				<input class="c2" type="button" onclick="location.href='user.jsp';" value="User" />
</div>
</body>

</html>