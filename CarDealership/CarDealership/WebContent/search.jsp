<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="car.Car" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
	 <nav class="navbar navbar-dark bg-light">
		<a href="index.jsp">Home</a>
		<a href="newInventory.jsp">New Cars</a>
		<a href="usedInventory.jsp">Used Cars</a>
		<a href="admin.jsp">Admin</a>
		<form class="form-inline" action="searchServlet" method="post">
			<input class="form-control mr-sm-2 col-sm-0" type="search" name="modelSearch" placeholder="Search" aria-label="Search">
    		<button class="btn btn-primary mb1 bg-black" type="submit">Search</button>
    	</form>
	</nav>
	
	<div class="jumbotron text-center">
		<h1>Famous Auto Sales</h1>
		<h5 style="color:#888">Search Results</h5>
	</div>
	
	<div style="margin: 30px 0 0 30px">
		<h4><span style="color:gray;margin-right:7px">Search results for:</span><c:out value="${modelSearch}"/></h4>
	</div>
	
	<div class="row" style="margin: 30px 0 0 30px">
		<c:forEach var="car" items="${matches}">
			<div class="col-md-4" style="margin-bottom: 30px">
				<img src="${car.picture}" style="width:300px;height:250px"><br>
				<h3>
					<c:out value="${car.yearMade}"/>
					<c:out value="${car.make}"/>
					<c:out value="${car.model}"/>
				</h3>
				<p>
					$<c:out value="${car.price}"/>
				</p>
				
				<a href="detailsServlet?carId=${car.stockId}">
					<button type="submit" class="btn btn-info">View Details</button>
				</a>	
			</div>	
		</c:forEach>
	</div>
	
	<hr>
	<footer>
		<p>Famous Auto Sales, Inc. 2020</p>
	</footer>
</body>
</html>