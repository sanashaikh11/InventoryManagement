<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Claim</title>
</head>
<style>
body {
	background: lightblue;
	 margin: auto;
  width: 50%;
}

</style>
<body>
<%
String date=request.getParameter("date");
String desc=request.getParameter("des");
String sno=request.getParameter("sno");
%>

<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="12345"></sql:setDataSource>


<sql:query dataSource="${dbCon}" var="query">
      
        SELECT count(*) as total FROM `project`.`add_claim` where serial_no='<%=sno%>';
        
        
      </sql:query>
 	 
      <c:forEach items="${query.rows}" var="i">
      <c:out value="${i.total}" />
        <c:choose>
          <c:when test="${i.total gt 2}">
          
            <h3> You can only submit 3 claims!</h3>
            
             
            
            
          </c:when>
          <c:otherwise>
          <sql:update dataSource="${dbCon}" var="query">
			insert into `project`.`add_claim`(`serial_no`,`description`,`date`) values('<%=sno%>','<%=desc%>','<%=date%>');
			</sql:update>

	
<h3> Claim Submitted</h3>
<input class="c2" type="button" onclick="location.href='index.jsp';" value="Home" />
<input class="c2" type="button" onclick="location.href='user_db.jsp';" value="Back" />
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 


</body>
</html>