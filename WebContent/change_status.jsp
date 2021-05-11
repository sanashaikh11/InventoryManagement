<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="12345"/>

<sql:update dataSource="${dbsource}" var="result">
			UPDATE `project`.`add_claim` SET `status` = '${param.status}' WHERE (`claim_id` = '${param.claim_id}' );
			</sql:update>
           <p>Status Updated<P>
            
             <input class="c2" type="button" onclick="location.href='index.jsp';" value="Logout" />
           <input  type="button" onclick="location.href='viewdevice.jsp';" value="Search by Device" />
           <input  type="button" onclick="location.href='adminView.jsp';" value="View all registered Devices" />
           <input  type="button" onclick="location.href='index_product.jsp';" value="Insert/Update" />
 <input class="c2" type="button" onclick="location.href='approve_claims.jsp';" value="Approved Claims" />
           <input  type="button" onclick="location.href='rejected_claim.jsp';" value="Rejected Claims" />


</body>
</html>