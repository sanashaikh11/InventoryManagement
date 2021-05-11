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
}
 .c2{
 position:relative;
    
    left: -75px;
  
 }
</style>
<body>
	<fieldset>
		<legend>Enter your information</legend>
		<form name="myForm" method="post"
			action="user_register_db.jsp">
			<table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">User Registration:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>ID:</label></td>
                        <td><input type="text" name="id" required/></td>
                    </tr>
                     <tr>
                        <td><label>FirstName:</label></td>
                        <td><input type="text" name="fname" required></td>
                    </tr>
                    <tr>
                        <td><label>LastName:</label></td>
                        <td><input type="text" name="lname" required></td>
                    </tr>
                    <tr>
                        <td><label>Email:</label></td>
                        <td><input type="text" name="email" required></td>
                    </tr>
                     <tr>
                        <td><label>Password:</label></td>
                        <td><input type="text" name="pass" required></td>
                    </tr>
                     <tr>
                        <td><label>Phone:</label></td>
                        <td><input type="text" name="cell" required ></td>
                    </tr>
                     <tr>
                        <td><label>Address:</label></td>
                        <td><input type="text" name="add" required></td>
                    </tr>
                      <tr>
                        <td><input type="submit" value="Register" /></td>
                        <td><input type="reset" value="Reset"/></td>
                    <td><input class="c2" type="button" onclick="location.href='index.jsp';" value="Home" /></td>
                    </tr>
                </tbody>
            </table>
			</br> <a href="user.jsp">Already have a account?Login</a><p></p>
		</form>

	</fieldset>
</body>
</html>