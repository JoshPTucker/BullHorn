<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<body>

<h1 align="center">Log in</h1>
<form action="LoginServlet" method="post">
		<input type="text" name="email" id="email" value="" placeholder="email"></input> <input
			type="password" name="password" id="password" value="" placeholder="password"></input> <input
			type="hidden" name="secretvalue" id="secretvalue" value="loginForm"></input>
		<input type="submit" name="submit" id="submit" value="Log in"></input>
		
	</form>
</body>
</html>