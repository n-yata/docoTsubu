<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/title/title.jsp" />
</head>
<body>
<h1>どこつぶメイン</h1>
<p>
${ sessionScope.loginUser.getName() }さん、ログイン中
<a href="/docoTsubu/Logout">ログアウト</a>
</p>
<p><a href="/docoTsubu/Main">更新</a></p>
<form action="/docoTsubu/Main" method="post">
<input type="text" name="text" />
<input type="submit" value="つぶやく" />
</form>
<c:if test="${ requestScope.errorMsg != null }">
    <p>${ requestScope.errorMsg }</p>
</c:if>
<c:forEach var="mutter" items="${ mutterList }">
    <P>${ mutter.getUserName() } : ${ mutter.getText() }</P>
</c:forEach>
</body>
</html>