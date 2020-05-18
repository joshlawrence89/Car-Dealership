<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Details</title>
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
			<input class="form-control mr-sm-2 col-sm-0" name="modelSearch" type="search" placeholder="Search" aria-label="Search">
    		<button class="btn btn-primary mb1 bg-black" type="submit">Search</button>
    	</form>
	</nav>
	
	<div class="jumbotron text-center">
		<h1>Details</h1>
	</div>
	
	<div class="row">
		<div class="col-md-4" style="padding:80px 0 0 30px">
		 	<h1>
		 		<span style="color:#666;font-size:80px"><c:out value="${carDetails.yearMade}"/></span><br>
		 		<span style="font-weight:bold"><c:out value="${carDetails.make}"/></span>
		 		<span style="font-weight:lighter"><c:out value="${carDetails.model}"/></span>
		 	</h1>	
		 	<h4 style="color:gray;background-color:#333;display:inline;padding:5px 15px 5px 15px">
		 	 	$<c:out value="${carDetails.price}"/>
		 	</h4>
		 	<br>
		 	<div id="carInfo">
			 	<table>
			 		<tr>
			 			<td>
			 				<p class="infoHeader">Mileage</p>
			 			</td>
			 			<td>
			 				<p><c:out value="${carDetails.mileage}"/></p>
			 			</td>
			 		</tr>
			 		<tr>
			 			<td>
			 				<p class="infoHeader">MPG</p>
			 			</td>
			 			<td>
			 				<p><c:out value="${carDetails.mpg}"/></p>
			 			</td>
			 		</tr>
	
		
			 		<tr>
			 			<td>
			 				<p class="infoHeader">Transmission</p>
			 			</td>
			 			<td>
			 				<p><c:out value="${carDetails.trans}"/></p>
			 			</td>
			 		</tr>
			 	</table>
		 	</div> 
		 	
		 	<br>
		 	<a href="purchaseServlet?stockId=${carDetails.stockId}">
		 		<button class="btn btn-dark" id="checkoutButton">Checkout</button>
		 	</a>		
		</div>
		<div class="col-md-8">
			<img src="${carDetails.picture}" style="width:675px;height:550px"><br>
		</div>
	</div>

 	
	<hr>
	<footer>
		<p>Famous Auto Sales, Inc. 2020</p>
	</footer>
</body>
</html>