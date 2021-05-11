
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>SELECT Operation</title>
        <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
    </head>
    <style>
body{
width: 50%;
 margin: auto;
}
table {
	background: lightblue;
	
 
   border-collapse: collapse;
}
</style>
    <body>
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="12345"/>
 
 			
 		
 		
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product;
        </sql:query>
    <center>
        <form>
            <table border="1">
            <br>
                <h2>Product List</h2>
                
                <tr>
                    
                    <th>Product Name</th>
                    <th>color</th>
                    <th>Quantity</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.product_name}"/></td>
                        <td><c:out value="${row.color}"/></td>
                        <td><c:out value="${row.quantity}"/></td>
                        <td><a href="insert_product.jsp">Add</a></td>
                        <td><a href="update.jsp?id=<c:out value="${row.id}"/>">Update</a></td>
                        
                         
                    </tr>
                </c:forEach>
            </table>
            <br>
  <input class="c2" type="button" onclick="location.href='index.jsp';" value="Logout" />
           <input  type="button" onclick="location.href='viewdevice.jsp';" value="Search by Device" />
           <input  type="button" onclick="location.href='viewuser.jsp';" value="Search a User" />
           <input  type="button" onclick="location.href='vewalluser.jsp';" value="View all users" />
           <input  type="button" onclick="location.href='adminView.jsp';" value="View all registered Devices" />
            <input  type="button" onclick="location.href='admin_claimsdb.jsp';" value="Claims" />
        </form>
       <!--  <a href="index.jsp">Go Home</a> -->
    </center>
    
</body>
</html>