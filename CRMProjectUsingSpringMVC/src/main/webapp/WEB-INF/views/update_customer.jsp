<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
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
		
		<h1 class="text-center mb-3">Update Customer Details</h1>
			<form action="${pageContext.request.contextPath }/handle-customer" method="post">
			
			    <input type="hidden" value="${customer.id }" name="id"/>
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">First Name</label> 
					<input type="text" class="form-control"
						id="fname" aria-describedby="emailHelp" name="fname" 
						placeholder="Enter the First Name"
						value="${customer.fname }"
						>
				</div>
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Last Name</label> 
				<input type="text" class="form-control"
						id="lname" aria-describedby="emailHelp" name="lname" 
						placeholder="Enter the Last Name"
						value="${customer.lname }"
						>
				</div>
				
			    <div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Email</label> 
					<input type="email" class="form-control"
					 aria-describedby="emailHelp" name="email" id="email" placeholder="Enter Customer Email"
					 value="${customer.email }"
					 >
				</div>
		
		        <div class="container text-center">
		         <%--  <a href=""
		           class ="btn btn-outline-danger"
		          >
		            Back
		          </a> --%>
		           <a href="${pageContext.request.contextPath }/"
		           class ="btn btn-outline-danger"
		          >
		            Back
		          </a>
		        <button type="submit" class="btn btn-outline-primary">Update Customer</button>
		        </div>
				
			</form>

		</div>
      </div>

	</div>

</body>
</html>