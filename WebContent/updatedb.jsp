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
    <body>
    <%
    String id=request.getParameter("id");%>
           <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="12345"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
             UPDATE product SET product_name = ?, quantity = ?,color = ?
            WHERE id='${param.id}';
            <sql:param value="${param.product_name}" />
            <sql:param value="${param.qty}" />
            <sql:param value="${param.color}" />
        </sql:update>
        
        
            <font size="3" color='green'> Congratulations ! Data updated
            successfully.</font><br><br>
              <input class="c2" type="button" onclick="location.href='index.jsp';" value="Logout" />
           <input  type="button" onclick="location.href='viewdevice.jsp';" value="Search a user" />
           <input  type="button" onclick="location.href='adminView.jsp';" value="View Devices" />
           <input  type="button" onclick="location.href='index_product.jsp';" value="Insert/Update" />
    </body>
</html>
