<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
fieldset {
	background: lightblue;
	 margin: auto;
  width: 70%;
}
 .c2{
 position:relative;
    
    left: -75px;
  
 }
</style>
    <body>
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="12345"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product where id=?;
            <sql:param value="${param.id}" />
        </sql:query>
        <fieldset>
        <form action="updatedb.jsp" method="post">
            <table border="1" width='40%'>
              <h2><b> <center> Update Product</center></b></h2></br>
                <tr>
                    <th>Product Name</th>
                    <th>color</th>
                    <th>Quantity</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                    <td><input type="hidden" value="${param.id}" name="id"/>
                        <input type="text" value="${row.product_name}" name="product_name"/>
                        <td>  <input type="text" value="${row.color}" name="color"/></td>
                        <td><input type="text" value="${row.quantity}" name="qty"/></td>
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="index_product.jsp">Go Home</a>
        </form>
        </fieldset>
    </body>
</html>