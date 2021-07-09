<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class=" text-center">welcome to my shop</h1>

				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">Product ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Price</th>
							<th scope="col">Availability</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${allProducts }" var="p">
;
								<tr>
								<th scope="row">${p.prodId }</th>
								<td>${p.prodName }</td>
								<td>&#x20B9; ${p.prodPrice }</td>
								<td>${p.availability }</td>
								<td><a href="delete/${p.prodId }">delete</a> <a
									href="update/${p.prodId }">update</a></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

				<div class="container text-center">
					<a href="store" class="btn btn-outline-success">Add Product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>