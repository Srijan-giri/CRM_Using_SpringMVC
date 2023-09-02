<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<!-- <h1>Hello World</h1> -->

	<div class="container">
		<div class="row">

			<div class="col-md-12 mt-3">

				<h1 class="text-center">Welcome to CRM Application</h1>
				<table class="table mt-lg-4 mt-md-3 mt-sm-2">
					<thead>
						<tr class="table-dark">
							<th scope="col">S.No</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Email</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					   <c:forEach items="${customer }" var="c">
					     <tr>
							<th scope="row">CUSTOMER${c.id }</th>
							<td>${c.fname }</td>
							<td>${c.lname }</td>
							<td>${c.email }</td>
							<td>
							   <a href="delete/${c.id}"><i class="fa-solid fa-trash-can text-danger" ></i></a>
							   <a href="update/${c.id }"><i class="fa-solid fa-pen-nib text-primary"></i></a>
							</td>
						</tr>
					   
					   
					   </c:forEach>
						
					</tbody>
					
				</table>
				<div class="container text-center">
				    <a href="addcustomer" class="btn btn-outline-success">Add Customer</a>
				
				</div>

			</div>

		</div>


	</div>
</body>
</html>