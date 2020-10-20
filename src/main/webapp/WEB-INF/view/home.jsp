<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	User: <security:authentication property="principal.username"/><br><br>
	Roles: <security:authentication property="principal.authorities"/><br><hr>
	Welcome to the luv2code company home page!
	<br><br>
	<security:authorize access="hasRole('MANAGER')">
	<a href="${pageContext.request.contextPath}/leaders">Leaders Meeting</a> (Only for managers)
	</security:authorize>
	<br><br>
	<security:authorize access="hasRole('ADMIN')">
	<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a> (Only for IT)
	</security:authorize>
<p>
<form:form method="POST" action="${pageContext.request.contextPath}/logout">
<input type="submit" value="logout"/>
</form:form>
</p>
</body>

</html>