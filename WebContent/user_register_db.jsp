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
  .c2{

  position:relative;
    left: 50px;
  
  }
 
</style>
<body>
 
<%
String id=request.getParameter("id");
String lname=request.getParameter("lname");
String fname=request.getParameter("fname");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String cell=request.getParameter("cell");
String add=request.getParameter("add");
%>
<% 
 if ( lname==null || fname==null || email==null){
 
%>
<p>Please enter the required fields</p>
<%} else {%>
<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="12345"></sql:setDataSource>
<sql:update dataSource="${dbCon}" var="proRec">
insert into login values('<%=id %>','<%=email%>','<%=pass%>','<%=fname%>','<%=lname%>','<%=cell%>','<%=add%>');
</sql:update>

<sql:query dataSource="${dbCon}" var="result">
select * from login where id='<%=id%>';
</sql:query>
<p>Your Registration details are:</p>


<table border="2"  bgcolor='lightblue'>
<tr>
<th>ID</th>
<th>Email</th>
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
<%} %>
<input class="c" type="button" onclick="location.href='index.jsp';" value="Home" />
<input class="c2" type="button" onclick="location.href='product.jsp';" value="Register Product"> 
</body>
</html>