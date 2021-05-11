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
    body{
    background: lightblue;}</style>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="12345"/>
       <%--  <sql:query var="count" dataSource="${dbsource}">
            Select count(*) FROM login where username = ? and password = ?
            <sql:param value="'${param.uname}'" />
            <sql:param value="'${param.pass}'" />
        </sql:query>
       	<p>Count is : ${count.rows}</p> --%>
       	   <sql:query dataSource="${dbsource}" var="selectQ">
        select count(*) as kount from login
        where email='${param.uname}'
        and password='${param.pass}'
      </sql:query>
 
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">
          
            <p> Login Successfully.</p>
            <a href="product.jsp">Do you want to register a product?Click me!</a> <br><br>
            <input class="c2" type="button" onclick="location.href='index.jsp';" value="Home" />
           <input  type="button" onclick="location.href='viewmydevice.jsp';" value="View my Device" />
          </c:when>
          <c:otherwise>
            <c:redirect url="user.jsp" >
              <c:param name="errMsg" value="Username/password does not match" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
     
       
    </body>
</html>