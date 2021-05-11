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
p{
font-size: 25px;}
body{
width: 70%;
 margin: auto;
}
table {
	background: lightblue;
	

   border-collapse: collapse;
}

 
</style>
<body>
 


<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="12345"></sql:setDataSource>


<sql:query dataSource="${dbCon}" var="result">
select * from login;
</sql:query>
<p>User details are:</p>


<table border="2"  bgcolor='lightblue'>
<tr>
<th>ID</th>
<th>UserName</th>
<th>Password</th>
<th>Fname</th>
<th>Lname</th>
<th>Cellphone</th>
<th>Address</th>
</tr>
<c:forEach var="col" items="${result.rows}">

<tr>
<td><c:out value="${col.id}"></c:out> </td>
<td><c:out value="${col.email}"></c:out> </td>
<td><c:out value="${col.password}"></c:out> </td>
<td><c:out value="${col.fname}"></c:out> </td>
<td><c:out value="${col.lname}"></c:out> </td>
<td><c:out value="${col.phone}"></c:out> </td>
<td><c:out value="${col.address}"></c:out> </td>
</tr>
</c:forEach>
</table>

 <input class="c2" type="button" onclick="location.href='index.jsp';" value="Logout" />
           <input  type="button" onclick="location.href='viewdevice.jsp';" value="Search by Device" />
           <input  type="button" onclick="location.href='adminView.jsp';" value="View all registered Devices" />
           <input  type="button" onclick="location.href='index_product.jsp';" value="Insert/Update" />
</body>
</html>