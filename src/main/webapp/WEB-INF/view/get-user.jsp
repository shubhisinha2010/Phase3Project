<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html>

<html>

<head>
	<title>Sporty Shoes</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body align="center">

	<div id="wrapper">
		<div id="header">
			<h2>User Found</h2>
		</div>
		
	</div>
	
	 <sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/sportyshoes"
        user="root" password="Shubhi@123"
    />
     
   <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM users WHERE firstname="Shubhi";
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Users Details</h2></caption>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email </th>
                <th>Location</th>
            </tr>
            <c:forEach var="name" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${name.firstname}" /></td>
                    <td><c:out value="${name.lastname}" /></td>
                    <td><c:out value="${name.email}" /></td>
                    <td><c:out value="${name.location}" /></td>
                       
                </tr>
            </c:forEach>
        </table>
    </div>
	
	
</body>
</html>