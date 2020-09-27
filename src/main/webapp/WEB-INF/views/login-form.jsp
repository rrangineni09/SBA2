<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring-form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>


<spring-form:form action="${pageContext.request.contextPath}/validate" method="POST">
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

       
  </div>
	
  <div class="container" style="background-color:#f1f1f1">
  	<button type="submit">Login</button>
    <button type="button" class="cancelbtn">Cancel</button>
    
  </div>

</spring-form:form>
<core:if test="${param.logout != null}">
	<i>You have been logged out successfully!!!</i>
</core:if>


</body>
</html>