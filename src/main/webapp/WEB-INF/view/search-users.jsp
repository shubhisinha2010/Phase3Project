<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html>

<html>

<head>
	<title>List Products</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body align="center">

	<div id="wrapper">
		<div id="header">
			<h2>Search Users</h2>
		</div>
		
	</div>
	<form >

Enter First Name : <input type="text" name= "nameone">
<br><br>
Enter Last Name : <input type="text" name="nametwo">
<br><br>
</form>
	<input type="button" value="Get User Results"
				   onclick="window.location.href='getUser'; return false;"
				   class="add-button"
			/>
			
		</body>
		</html>
		
	