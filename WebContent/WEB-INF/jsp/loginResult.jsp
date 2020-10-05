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
<h1>どこつぶログイン</h1>
<c:choose>
    <c:when test="${sessionScope.loginUser != null}">
        <p>ログインに成功しました</p>
        <p>ようこそ${ sessionScope.loginUser.getName() }さん</p>
        <a href="/docoTsubu/Main">つぶや投稿・閲覧へ</a>
    </c:when>
    <c:otherwise>
        <p>ログインに失敗しました</p>
        <a href="/docoTsubu/">TOPへ</a>
    </c:otherwise>
</c:choose>
</body>
</html>