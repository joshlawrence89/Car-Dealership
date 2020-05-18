<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="car.Car" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Checkout</title>
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
		<h5 style="color:#888">Checkout</h5>
	</div>
	
	<div class="row" style="margin: 30px 0 0 30px">
		<div class="col-md-4">
			<h3 style="background-color:aqua;padding:3px 15px 3px 15px;display:inline-block">
				<span style="font-weight:bold;color:#888"><c:out value="${carToBuy.yearMade}"/></span>
				<span><c:out value="${carToBuy.make}"/></span>
				<span style="font-weight:lighter"><c:out value="${carToBuy.model}"/></span>
			</h3>
			<p style="margin-left:30px;color:#777">
				$<c:out value="${carToBuy.price}"/>
			</p>	
			<img src="${carToBuy.picture}" style="width:200px;height:150px"><br>
		</div> <!-- End col -->
		<div class="col-md-8">
		<h3>Enter Your Information</h3>
			<form id="checkoutForm" action="purchaseServlet" method="get">
				<c:if test="${carToBuy.isFourMonthsOld()}">
					<label for="customerBid">Lower Bid</label>
					<input type="text" name="customerBid" id="customerBid">
					<c:if test="${lowBid eq true}">
						<span class="error">Max discount is 10%</span>
					</c:if>
					<br>
				</c:if>
							
				<label for="firstName">First Name</label>
				<input type="text" name="firstName" id="firstName" required>
				<br>
								
				<label for="lastName">Last Name</label>
				<input type="text" name="lastName" id="lastName">
				<br>
				
				<label for="address">Address</label>
				<input type="text" name="address" id="address">
				<br>
				
				<label for="ccNum">Credit Card Number</label>
				<input type="text" name="ccNum" id="ccNum" required>
				<br>
				
				<input type="hidden" value="${carToBuy.stockId}" name="stockId" id="firstName">
								
				<button type="submit" id="buyButton" class="btn btn-dark">Buy</button>
			</form>
		</div>	

	</div> <!-- End row -->

	
	<hr>
	<footer>
		<p>Famous Auto Sales, Inc. 2020</p>
	</footer>
</body>
</html>