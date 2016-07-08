<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Account</title>
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<body>
	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">BullHorn</a>
		</div>
		<ul class="nav navbar-nav ">
			<li class="active"><a
				href="http://localhost:8080/BullHorn/home.jsp">Home</a></li>
		</ul>
	</div>
	</nav>
	<p>You are about to make an account</p>
	<div align="center" style="background-color:powderblue">
	<form action="AddUser" method="post">
		<fieldset>
			<input type="text" name="username" id="username" value=""
				placeholder="User Name"></input>
		</fieldset>
		<fieldset>
			<input type="text" name="email" id="email" value=""
				placeholder="email"></input>
		</fieldset>
		<fieldset>
			<input type="password" name="password" id="password" value=""
				placeholder="password"></input>
		</fieldset>
		<fieldset>
			<input type="hidden" name="secretvalue" id="secretvalue"
				value="loginForm"></input> <input type="submit" name="submit"
				id="submit" value="create"></input>
		</fieldset>
	</form>
	</div>
</body>
</html>