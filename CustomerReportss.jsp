<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>-->
<html>
<head>
<title>Detailed Reports</title>
</head>
<body >

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #5F8575">
			
			<ul class="navbar-nav">
			<li><a href="index.jsp" class="btn btn-success">Home </a></li>
			<li><a href="studentinclass-list.jsp" class="btn btn-success">Generate Another Report</a></li>

			</ul>
		</nav>
	</header>
	<sql:setDataSource 
    var="database" 
    driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/proj_signup?allowPublicKeyRetrieval=true&useSSL=false"
     user="root"
     password="root"
     />
	
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">See Detailed Reports</h3>
			<hr>
			<% String hidden = request.getParameter("class_sec"); %>
Class <%=hidden %>
<!-- Report 1 -->
<h2>Report 1: Students in this class</h2>    
   <sql:query var="rs" dataSource="${database}">
         SELECT * FROM customers;
    </sql:query>    
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Customer ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Age</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="customers" items="${rs.rows}">
        <tr>
            <td> <c:out value="${customers.id}"/> </td>
            <td> <c:out value="${customers.first_name}"/> </td>
            <td> <c:out value="${customers.last_name}"/> </td>
            <td> <c:out value="${customers.age}"/> </td>
        </tr>
    </c:forEach>
		
				</tbody>

			</table>
			<br> 		

</body>
</html>
