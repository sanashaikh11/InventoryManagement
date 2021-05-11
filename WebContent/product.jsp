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
		<legend>Device Registration</legend>
		<form name="myForm" method="post"
			action="product_db.jsp">
 <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Device Registration:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>	Serial No.</label></td>
                        <td><input type="text" name="sno" required></td>
                    </tr>
                     <tr>
                        <td><label>UserName</label></td>
                        <td><input type="text" name="uname" required></td>
                    </tr>
                    <tr>
                        <td><label>Product</label></td>
                        <td><input type="text" name="product" required></td>
                    </tr>
                     <tr>
                        <td><label>Date</label></td>
                        <td><input type="text" name="date" required></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="Reset"/></td>
                         <td><input class="c2" type="button" onclick="location.href='index.jsp';"value="Home"></td>
                    </tr>
                    <tr>
                   
                    </tr>
                </tbody>
            </table>
			
		</form>
	</fieldset>
</body>
</html>