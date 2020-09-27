<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">CMS</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    
<!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/login-form">LOGIN</a>
      </li>
     <c:choose>
     
     	<c:when test="${unm!=null && role=='ADMIN'}">
		     <li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/admin/product-list">Product LIST</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/admin/product-entry">New Product</a>
		      </li>
		      	
     	</c:when>
     	<c:when test="${unm!=null && role=='USER'}">
     		  <li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/user/show-list">USER Prod List</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/add-to-cart/{productId}">Add to Cart</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/checkout">CheckOut</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/finalize">Confirm</a>
		      </li>
     	</c:when>
     	<c:otherwise>
     		<li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
		    </li>
		    <li class="nav-item">
		       <a class="nav-link" href="${pageContext.request.contextPath}/register">New User</a>
		    </li>
     	</c:otherwise>
     </c:choose>	
    
    </ul>
  </div>
</nav>