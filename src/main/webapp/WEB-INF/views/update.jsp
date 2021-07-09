<%@page import="org.eclipse.jdt.internal.compiler.env.IModule.IService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page isELIgnored="false"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>update product</title>
</head>
<body>


<div class="container mt - 5">
		<h1>Update Product</h1>
		<form action="${pageContext.request.contextPath }/updateform" method="post">

			<input type = "text" value = "${product.prodId }" name = "prodId">
			<div class="form-group">
				<label for="userName">Product Name</label> <input type="text"
					class="form-control" id="userName" aria-describedby="emailHelp"
					placeholder="Enter Here" name="prodName" value = "${product.prodName }">
			</div>

			<div class="form-group">
				<label for="price">Price</label> <input type="number"
					class="form-control" id="price" aria-describedby="emailHelp"
					placeholder="Enter Here" name="prodPrice" value = "${product.prodPrice }">
			</div>

			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="availability"
					id="inlineRadio1" value="Available"> <label
					class="form-check-label" for="inlineRadio1">Available</label>
			</div>
			
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="availability"
					id="inlineRadio2" value="Not_Available"> <label
					class="form-check-label" for="inlineRadio2">Not Available</label>
			</div>


			<div class="container text-center">
				<button type="submit" class="btn btn-success">Update</button>
				<button type="reset" class="btn btn-danger">Reset</button>
				
				<a href="${pageContext.request.contextPath }/" class = "btn btn-outline-danger">Back</a>
			</div>
		</form>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>