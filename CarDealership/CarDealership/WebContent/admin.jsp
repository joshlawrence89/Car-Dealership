<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
 	<nav class="navbar navbar-dark bg-light">
		<a href="index.jsp">Home</a>
	</nav>
	<div class="jumbotron text-center">
		<h1>Famous Auto Sales</h1>
		<h5 style="color:#888">Administration</h5>	
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<h3 style="margin-top:30px">Add New Inventory</h3>
				<form id="AddForm" action="addServlet" method="post">
			
					
					<label for="make">Make</label>
					<input type="text" name="make" id="make">
					<br>
					
					<label for="model">Model</label>
					<input type="text" name="model" id="model">
					<br>
					
					<label for="yearMade">Year</label>
					<input type="text" name="yearMade" id="yearMade">
					<br>
					
					<label for="mpg">MPG</label>
					<input type="text" name="mpg" id="mpg">
					<br>
					
					<label for="mileage">Mileage</label>
					<input type="text" name="mileage" id="mileage">
					<br>
					
					<label for="engine">Engine</label>
					<input type="text" name="engine" id="engine">
					<br>
	
					<label for="trans">Transmission</label>				
					<input type="text" name="trans" id="trans">
					<br>
	
					<label for="isUsed">New Car (true/false)</label>				
					<input type="text" name="isUsed" id="isUsed">
					<br>
										
					<label for="price">Price</label>				
					<input type="text" name="price" id="price">
					<br>
					
					<label for="picture">Image</label>				
					<input type="text" name="picture" id="picture">
					<br>
					
					<label for="stockId">Stock Number</label>
					<input type="text" name="stockId" id="stockId">
					<br>
									
					<button type="submit" class="btn btn-dark aquaHover">Submit</button>
				</form>
			</div>
			
			<div class="col-md-7" style="margin-right: 100%">
				<h3 style="margin-top:15%;">Sales Report</h3>
				<table class="table table-bordered table-striped table-hover table-dark">
					<thead>
						<th>Name</th>
						<th>Make</th>
						<th>Model</th>
						<th>Sale Date</th>
					</thead>
					<c:forEach var="transaction" items="${report}">
					
						<tr>
							<td>
								<c:out value="${purchase.firstName} "/>
								<c:out value="${purchase.lastName}"/>
							</td>
							<td>	
	 							<c:out value="${purchase.carSold.make}"/>
							</td>
							<td>	
								<c:out value="${purchase.carSold.model}"/>
							</td>
							<td>	
								<c:out value="${purchase.saleDate}"/>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
		</div> <!-- End row --> 
	</div> <!-- End container -->
	
	<hr>
	<footer>
		<p>Famous Auto Sales, Inc. 2020</p>
	</footer>
</body>
</html>