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
<body>
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="12345"/>

<sql:query dataSource="${dbsource}" var="result">
			select * from add_claim where status='Waiting';
			</sql:query>
<p>Waiting list of the claims:</p>

<table border="1"  bgcolor='lightblue'>

<tr>
<td>Claim ID</td>
<td>Serial No</td>
<td>Status</td>
<td>Description</td>
<td>Claim Date</td>
<td>Action</td>
<td>Action</td>
</tr>
<c:forEach var="col" items="${result.rows}">

<tr>
<td><c:out value="${col.claim_id}"></c:out> </td>
<td><c:out value="${col.serial_no}"></c:out> </td>
<td><c:out value="${col.status}"></c:out> </td>
<td><c:out value="${col.description}"></c:out> </td>
<td><c:out value="${col.date}"></c:out> </td>
<td><a href="change_status.jsp?claim_id=<c:out value="${col.claim_id}"/>&status=Approved">Approve</a></td>
<td><a href="change_status.jsp?claim_id=<c:out value="${col.claim_id}"/>&status=Rejected">Reject</a></td>

    

</tr>
</c:forEach>

</table>
            <a href="approve_claims.jsp">Click here for lists of approved claims</a> <br>
            <a href="rejected_claim.jsp">Click here for lists of rejected claims</a><br> 
            
             <input class="c2" type="button" onclick="location.href='index.jsp';" value="Logout" />
           <input  type="button" onclick="location.href='viewdevice.jsp';" value="Search by Device" />
           <input  type="button" onclick="location.href='adminView.jsp';" value="View all registered Devices" />
           <input  type="button" onclick="location.href='index_product.jsp';" value="Insert/Update" />

</body>
</html>