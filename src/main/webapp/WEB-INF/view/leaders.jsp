<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>

</head>
<body>
<h1>Leaders Meetings</h1>
<br>
<hr>
<p>
See you in brazil....
</p>
<hr>
User: <security:authentication property="principal.username"/>
<br>
Roles: <security:authentication property="principal.authorities"/>

<hr>
<br>
<a href="${pageContext.request.contextPath}/">Back to Home Page</a>
</body>
</html>