<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
fieldset {
	background: lightblue;
	 margin: auto;
  width: 50%;
}
 .c2{
 position:relative;
    
    left: -100px;
  
 }
</style>
<body>
<fieldset>
		<legend>Claim Information</legend>
<form action="add_claim_db.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Add Claim</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Date</label></td>
                        <td><input type="text" name="date"/></td>
                    </tr>
                    <tr>
                        <td><label>Description</label></td>
                        <td><textarea  name="des" rows="5" cols="20"></textarea>
                        </td>
                        
                    </tr>
                     <tr>
                     <td>
                     <input type="hidden" name="sno" value="${param.serial_no}" />
                     </td>
                     </tr>
                     <tr>
                     <td> <input type="submit" value="Submit"></td>
              <td><input type="reset" value="Reset"></td>
              <td><input class="c2" type="button" onclick="location.href='index.jsp';" value="Home" /></td>
                     </tr>
                    </tbody>
               </table>
            
              
 </form>
</fieldset>
</body>
</body>
</html>