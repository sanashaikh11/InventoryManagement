<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
form {
	background: lightblue;
	 margin: auto;
  width: 50%;

  padding: 10px;
	
}
</style>
    <body>
        <form action="insertdb_product.jsp" method="post">
        
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Insert Product</th>
                    </tr>
                </thead>
                <tbody>
                 <tr>
                        <td><label>Product Id</label></td>
                        <td><input type="text" name="id"/></td>
                    </tr>
                    <tr>
                        <td><label>Product Name</label></td>
                        <td><input type="text" name="product_name"/></td>
                    </tr>
                     <tr>
                        <td><label>Color</label></td>
                        <td><input type="text" name="color"/></td>
                    </tr>
                    <tr>
                        <td><label>Quantity</label></td>
                        <td><input type="text" name="qty" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="reset"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index_product.jsp">Go Back</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="index_product.jsp">Go Back</a>
        </c:if></font>
 
    </body>
</html>