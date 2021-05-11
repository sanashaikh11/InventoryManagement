<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
.c{
   position:relative;
   width:30%;
    left: 30px;
  }
 
 
</style>
<body>



<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="12345"></sql:setDataSource>
<br>

<font size="4" color='black'> Registered Products:</font>
<br>
<sql:query dataSource="${dbCon}" var="result">
select * from registration ;
</sql:query>

<table border="3px solid black" bgcolor='lightblue'>
<br>
<tr>
<td>Serial No</td>
<td>Username</td>
<td>Device</td>
<td>Date</td>

</tr>
<c:forEach var="col" items="${result.rows}">

<tr>
<td><c:out value="${col.serial_no}"></c:out> </td>
<td><c:out value="${col.username}"></c:out> </td>
<td><c:out value="${col.product_name}"></c:out> </td>
<td><c:out value="${col.date}"></c:out> </td>

</tr>
</c:forEach>


</table>
<br>

  <input class="c2" type="button" onclick="location.href='index.jsp';" value="Logout" />
           <input  type="button" onclick="location.href='viewdevice.jsp';" value="Search by Device" />
           <input  type="button" onclick="location.href='adminView.jsp';" value="View all registered Devices" />
           <input  type="button" onclick="location.href='index_product.jsp';" value="Insert/Update" />
            <input  type="button" onclick="location.href='admin_claimsdb.jsp';" value="Claims" />

</body>
</html>