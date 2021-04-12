<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Products</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Admin - Sporty Shoes Product Management</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add product -->
		
			<input type="button" value="Add Product"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
			/>
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>Name</th>
					<th>Category</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our Products -->
				<c:forEach var="tempCustomer" items="${products}">
				
<!-- 					construct an "update" link with customer id -->
 					<c:url var="updateLink" value="/product/showFormForUpdate"> 
 						<c:param name="customerId" value="${tempCustomer.id}" /> 
					</c:url>					 

<!-- 					construct an "delete" link with customer id -->
 					<c:url var="deleteLink" value="/product/delete"> 
 						<c:param name="customerId" value="${tempCustomer.id}" /> 
 					</c:url>					 
					
					<tr>
						<td> ${tempCustomer.fname} </td>
						<td> ${tempCustomer.catg} </td>
						<td> ${tempCustomer.pp} </td>
						
						<td> 
<!-- 							display the update link -->
							<a href="${updateLink}">Update Category</a> 

 							<a href="${deleteLink}" 
							   onclick="if (!(confirm('Are you sure you want to remove this product?'))) return false">Remove Product</a> 
						</td> 
						
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	
	<br> 
	<br>
	<input type="button" value="Users List"
				   onclick="window.location.href='showUsers'; return false;"
				   class="add-button"
			/>
<br> 
	<br>
<input type="button" value="Purchase Report"
				   onclick="window.location.href='reports'; return false;"
				   class="add-button"
			/>


</body>

</html>