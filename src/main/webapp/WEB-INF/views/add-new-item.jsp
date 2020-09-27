<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD NEW</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<body>
	<jsp:include page="${pageContext.request.contextPath}/header" />

	
	<section class="container-fluid p-4">
	<h3>${isNew?"New Item":"Edit Item" }</h3>
	<form:form  class="form" action='${isNew?pageContext.request.contextPath.concat("/product-entry"):pageContext.request.contextPath.concat("/admin/product-save")}' method="POST" modelAttribute="product">
	<div class="col-sm-4">	
	
		<div class="form-group">
			<form:label path="ProductId">Product ID</form:label>
			<form:input type="number" path="ProductId" readonly="${!isNew }" class="form-control"/>
			<form:errors path="ProductId" class="alert alert-danger"/>
		</div>
		<div class="form-group">
			<form:label path="ProductName">ProductName</form:label>
			<form:input type="text" path="ProductName" class="form-control"/>
			<form:errors path="ProductName" class="alert alert-danger"/>
		</div>
		<div class="form-group">
			<form:label path="Cost">Cost</form:label>
			<form:input type="number" path="Cost" class="form-control"/>
			<form:errors path="Cost" class="alert alert-danger"/>
		</div>
		<div class="form-group">
			<form:label path="Description">Description</form:label>
			<form:input type="text" path="Description" class="form-control"/>
			<form:errors path="Description" class="alert alert-danger"/>
		</div>
		</div>
		<div class="form-group text-right">
		<button class="btn btn-primary">SAVE</button>
		</div>
	</form:form>
	</div>
	</section>

	
</body>

	
</html>