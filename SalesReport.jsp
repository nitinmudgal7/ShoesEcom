<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>Sales Report</title>
        <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
        <link rel="stylesheet" href="css/style.css">
</head>
<body >
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #5F8575">
			
			<ul class="navbar-nav">
			<li><a href="index.jsp" class="btn btn-success">Home </a></li>
			
			</ul>
		</nav>
	</header>
	<!-- Nitin -->
	<form action = "SalesReport.jsp" method = "GET">
       Category: <input type = "text" name = "Category">
       <input type = "submit" value = "Submit" />
    </form>
	<!-- Nitin -->	
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
			<hr>
			<% String hidden = request.getParameter("Category"); %>

<!-- Report 1 -->
<h2>Sales For SportyShoes.com by Category</h2>    
   <sql:query var="rs" dataSource="${database}">
         SELECT * FROM sales where category = "<%=hidden %>";
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
						<th>Order ID</th>
						<th>Product</th>
						<th>Category</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="sales" items="${rs.rows}">
        <tr>
            <td> <c:out value="${sales.id}"/> </td>
            <td> <c:out value="${sales.product}"/> </td>
            <td> <c:out value="${sales.category}"/> </td>
            <td> <c:out value="${sales.date}"/> </td>
        </tr>
    </c:forEach>
		
				</tbody>

			</table>
			<br> 		

</body>
</html>
