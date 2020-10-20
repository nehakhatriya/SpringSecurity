<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

</head>
<body>
<h1>Login Form</h1>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
<c:if test="${param.error!=null }">
<p><i> Sorry! Invalid Username/Password</i></p>
</c:if>
<p>
Username: <input type="text" name="username"/>
</p>
<p>
Password: <input type="password" name="password"/>
</p>
<input type="submit" value="Login"/>
</form:form>
</body>
</html>