<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<body style="background-color: skyblue">
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BullHorn</a>
    </div>
    <ul class="nav navbar-nav ">
      <li class="active"><a href="http://localhost:8080/BullHorn/home.jsp">Home</a></li>
      <li><a href="http://localhost:8080/BullHorn/Newsfeed">news feed</a></li>
      <li><a href="http://localhost:8080/BullHorn/profile.jsp">Profile</a></li> 
    </ul>
  </div>
</nav>
<div class="container" style="background-color:magenta" align="center">
<a href="http://localhost:8080/BullHorn/profile.jsp"><img src="${profilepic }" align="left"></img></a>
<form action="PostServlet" method="post">
<fieldset>

<textarea name="userpost" id="userpost" placeholder="Write post here" rows=6 cols= 30 maxlength= 140></textarea>
</fieldset>
<fieldset>
<input type="submit" name ="submit" id="submit" value="submit"></input>
</fieldset>
</form>
</div>
<div>
	<table class="table table-bordered table-striped table-hover" style="background-color:lightblue">
    <thead>
        <tr><th> </th><th>User</th><th>Post</th><th>Date</th></tr>
    </thead>
    <tbody>
    <c:forEach var="userposts" items="${userposts}">
        <tr><td><img src="${userposts.bhuser.gravatarurl}"></img></td>
        <td><c:out value="${userposts.bhuser.useremail}"/></td>
        <td><c:out value="${userposts.posttext}"/></td>
        <td><fmt:formatDate value="${userposts.postdate}" pattern="yy-MMM-dd"/></td>
        </tr>
    </c:forEach>
    </tbody>
    </table>
    </div>
</body>
</html>