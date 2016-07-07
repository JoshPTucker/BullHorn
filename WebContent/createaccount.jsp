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
      <li class="active"><a href="http://localhost:8080/BullHorn/home.jsp">Home</a></li>
      <li><a href="http://localhost:8080/BullHorn/newsfeed.jsp">news feed</a></li>
      <li><a href="#">Page 2</a></li> 
      <li><a href="https://www.google.com">google</a></li> 
    </ul>
  </div>
</nav>
	<p>You are about to make an account</p>
	<form action="AddUser" method="post">
		<input type="text" name="username" id="username" value=""
			placeholder="User Name"></input> <input type="text" name="email"
			id="email" value="" placeholder="email"></input> <input
			type="password" name="password" id="password" value=""
			placeholder="password"></input> <input type="hidden"
			name="secretvalue" id="secretvalue" value="loginForm"></input> <input
			type="submit" name="submit" id="submit" value="create"></input>
	</form>
</body>
</html>