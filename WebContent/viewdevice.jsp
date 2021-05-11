<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

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
		<legend>View Registration</legend>
		<form name="myForm" method="post"
			action="viewregistereddevices.jsp">
 <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">My devices:</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                        <td><label>Enter the product Name</label></td>
                        <td><input type="text" name="pname" required></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="Reset"/></td>
                         <td><input class="c2" type="button" onclick="location.href='index.jsp';"value="Home"></td>
                         
                    </tr>
                   
                </tbody>
            </table>
			</br> <a href="product.jsp">Want to register a new device?Click me</a><p></p>
		</form>
	</fieldset>
</body>
</html>