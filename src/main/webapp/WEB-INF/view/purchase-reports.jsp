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

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Sporty Shoes Sales</h2>
		</div>
		
	</div>
	<br>
	<input type="button" value="Back to Admin Page"
				   onclick="window.location.href='list'; return false;"
				   class="add-button"
			/>
	
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/sportyshoes"
        user="root" password="Shubhi@123"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM purchase;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Purchase Reports</h2></caption>
            <tr>
                <th>Name</th>
                <th>Category</th>
                <th>Items Sold </th>
                <th>Date</th>
                <th>Total Amount</th>
            </tr>
            <c:forEach var="name" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${name.name}" /></td>
                    <td><c:out value="${name.category}" /></td>
                    <td><c:out value="${name.nounits}" /></td>
                    <td><c:out value="${name.date}" /></td>
                    <td><c:out value="${name.total}" /></td>
                    
                       
                </tr>
            </c:forEach>
        </table>
    </div>
	
	
</body>
</html>
