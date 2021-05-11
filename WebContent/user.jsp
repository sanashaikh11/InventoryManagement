<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script>

</script>
<title>webform1</title>
</head>
<style>
fieldset {
	background: lightblue;
	 margin: auto;
  width: 50%;

  padding: 10px;
	
}
</style>
<body>
	<fieldset>
		<legend>Login form:</legend>
		<form name="myForm" method="post"
			action="user_db.jsp">
<table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter your credentials:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Enter your UserName</label></td>
                        <td><input type="text" name="uname" required></td>
                    </tr>
                     <tr>
                        <td><label>Enter your Password</label></td>
                        <td><input type="text" name="pass" required></td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset"/></td>
                        <td><input class="c2" type="button" onclick="location.href='index.jsp';" value="Home" /></td>
                    </tr>
                </tbody>
            </table>
			</br> <a href="user_register.jsp">New User?Create account</a><p></p>
		</form>
	</fieldset>
	
	
</body>
</html>