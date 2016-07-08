<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>News Feed</title>
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
      <li><a href="http://localhost:8080/BullHorn/newsfeed.jsp">news feed</a></li>
      <li><a href="#">Page 2</a></li> 
      <li><a href="https://www.google.com">google</a></li> 
    </ul>
  </div>
 
</nav>
	<%-- 	Posts ${posts} --%>
	<table class="table table-bordered table-striped table-hover">
    <thead>
        <tr><th> </th><th>User</th><th>Post</th><th>Date</th></tr>
    </thead>
    <tbody>
    <c:forEach var="post" items="${posts}">
        <tr><td><img src="${post.bhuser.gravatarurl}"></img></td>
        <td><c:out value="${post.bhuser.username}"/></td>
        <td><c:out value="${post.posttext}"/></td>
        <td><fmt:formatDate value="${post.postdate}" pattern="yy-MMM-dd"/></td>
        </tr>
    </c:forEach>
    </tbody>
    </table>
</body>
</html>