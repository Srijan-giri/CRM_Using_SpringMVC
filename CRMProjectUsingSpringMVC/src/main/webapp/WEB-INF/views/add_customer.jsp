<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">

		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Fill the Customer Details</h1>
				<form action="handle-customer" method="post">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">First
							Name </label> <input type="text" class="form-control" name="fname"
							id="fname" aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Last
							Name</label> <input type="text" class="form-control" name="lname"
							id="lname" aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Email
							address
							</label> <input type="email" class="form-control"
							id="email" name="email" aria-describedby="emailHelp">
					</div>
					<div class="conteiner text-center">
					     <a href="${pageContext.request.contextPath }/"
		                    class ="btn btn-outline-danger" >
		                    Back
		                </a>
					     <button type="submit" class="btn btn-outline-success">Add Customer</button>
					</div>
					
				</form>

			</div>
		</div>
	</div>
</body>
</html>