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
			<h2>Sporty Shoes Admin Login</h2>
		</div>
	</div>

<form action="product/list">
<br>
Username <input type="text">
<br>
<br>
Password  <input type="password">
<br>
<br>
<input type="submit" value="Login">
</form>

</body>
</html>




















