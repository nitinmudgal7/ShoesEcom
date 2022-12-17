<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>Manage Products</title>
        <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
        <link rel="stylesheet" href="css/style.css">
</head>
<body >
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #5F8575">
			
			<ul class="navbar-nav">
			<li><a href="indexss.jsp" class="btn btn-success">Home </a></li>
			
			</ul>
		</nav>
	</header>
	<!-- Nitin -->
	<form action = "Manageprod.jsp" method = "GET">
       ProductID: <input type = "text" name = "prodid">
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
			<% String hidden = request.getParameter("prodid"); %>

<!-- Report 1 -->
<h2>Manage the products for SportyShoes.com</h2>    
   <sql:query var="rs" dataSource="${database}">
         SELECT * FROM products where id = "<%=hidden %>";
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
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Availability</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="sales" items="${rs.rows}">
        <tr>
            <td> <c:out value="${sales.id}"/> </td>
            <td> <c:out value="${sales.product}"/> </td>
            <td> <c:out value="${sales.category}"/> </td>
            <td> <c:out value="${sales.availability}"/> </td>
        </tr>
    </c:forEach>
		
				</tbody>

			</table>
			<br> 		
<form action = "Manageprod.jsp" method = "POST">
       <input href = "Manageprod2.jsp" type = "submit" value = "Update Now" />
    </form>
</body>
</html>
