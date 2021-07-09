<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Saved successfully</title>
<style>
table, th, td {
	border: 1px solid red;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	position: centre;
}
</style>

</head>
<body>
	<h3>product saved successfully</h3>

	<table style="width: 100%">
		<tr>
			<th>ProductId</th>
			<th>ProductName</th>
			<th>Price</th>
			<th>Availability</th>
		</tr>
		<tr>
			<td >${product.prodId }</td>
			<td>${product.prodName }</td>
			<td>${product.prodPrice }</td>
			<td>${product.availability }</td>
		</tr>

	</table>
</body>
</html>

