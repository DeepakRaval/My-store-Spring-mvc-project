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

	<div class="container">

		<div class="card mx-auto mt-5" style="width: 80%">

			<div class="card-body">

				<h3 class="text-center text-black">My Store</h3>

					<div class="container text-center mt-5">
						<a href="store" class="btn btn-outline-success">Add Product</a>
						<a href="list" class="btn btn-outline-success">Product List</a>
					</div>

			</div>
		</div>

	</div>
</body>
</html>