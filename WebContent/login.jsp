<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <fmt:setLocale value="en_US" scope="session"></fmt:setLocale>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<body style="background-color: skyblue">

<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BullHorn</a>
    </div>
    <ul class="nav navbar-nav ">
    </ul>
  </div>
</nav>
<h1 align="center">Welcome To BullHorn</h1>
<div align="center" style="background-color:powderblue">
<form action="LoginServlet" method="post">
<fieldset>
<input type="text" name="email" id="email" value="" placeholder="email"></input>
</fieldset>
<fieldset>
<input type="password" name="password" id="password" value="" placeholder="password"></input>
</fieldset>
		<input type="hidden" name="secretvalue" id="secretvalue" value="loginForm"></input>
		<input type="submit" name="submit" id="submit" value="Log in"></input>	
</form>
</div>
</body>
</html>