<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	background: lightblue;
	 margin: auto;
  width: 50%;
}

</style>
<body>


<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="12345"/>

<sql:query dataSource="${dbsource}" var="result">
			select * from add_claim where serial_no='${param.serial_no}'
			</sql:query>
<h3>Claims</h3>

<table border="1"  bgcolor='lightblue'>

<tr>
<td>Claim Date</td>
<td>Status</td>
</tr>
<c:forEach var="col" items="${result.rows}">

<tr>
<td><c:out value="${col.date}"></c:out> </td>
<td><c:out value="${col.status}"></c:out> </td>
    

</tr>
</c:forEach>

</table>
<input class="c2" type="button" onclick="location.href='index.jsp';" value="Home" />
<input class="c2" type="button" onclick="location.href='user_db.jsp';" value="Back" />

</body>
</html>