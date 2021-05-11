<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>INSERT Operation</title>
    </head>
    <body>
        <c:if test="${ empty param.product_name or empty param.qty}">
            <c:redirect url="insert_product.jsp" >
                <c:param name="errMsg" value="Please Enter Product and Quantity" />
            </c:redirect>
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="12345"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO product(id,product_name,color,quantity) VALUES (?,?,?,?);
            <sql:param value="${param.id}" />
            <sql:param value="${param.product_name}" />
             <sql:param value="${param.color}" />
            <sql:param value="${param.qty}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="index_product.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>