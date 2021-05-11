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
    
  padding: 10px;}
  .c2{

  position:relative;
    left: 20px;
  padding: 10px;
  }
 
</style>
<body>
<%

String pname=request.getParameter("pname");

%>


<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="12345"></sql:setDataSource>

<p>Registration details:</p>
<sql:query dataSource="${dbCon}" var="result">
select * from registration where product_name='<%=pname%>' ;
</sql:query>

<table border="1" bgcolor='lightblue'>

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
<input class="c" type="button" onclick="location.href='index.jsp';" value="Home" />


</body>
</html>