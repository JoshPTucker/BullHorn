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
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BullHorn</a>
    </div>
    <ul class="nav navbar-nav ">
      <li class="active"><a href="http://localhost:8080/BullHorn/home.jsp">Home</a></li>
      <li><a href="http://localhost:8080/BullHorn/Newsfeed">news feed</a></li>
      <li><a href="#"></a></li> 
      <li><a href="https://www.google.com">google</a></li> 
    </ul>
  </div>
</nav>
<img src=gravatarURL></img>
<form action="PostServlet" method="get">

<textarea name="userpost" id="userpost" placeholder="Write post here"></textarea>
<input type="submit" name ="submit" id="submit" value="submit"></input>

</form>

	<table class="table table-bordered table-striped table-hover">
    <thead>
        <tr><th>User</th><th>Post</th><th>Date</th></tr>
    </thead>
    <tbody>
    <c:forEach var="userposts" items="${userposts}">
        <tr><td><c:out value="${userposts.bhuser.useremail}"/></td>
        <td><c:out value="${userposts.posttext}"/></td>
        <td><fmt:formatDate value="${userposts.postdate}" pattern="yy-MMM-dd"/></td>
        </tr>
    </c:forEach>
    </tbody>
    </table>
</body>
</html>