<%--
  Created by IntelliJ IDEA.
  User: Sergey
  Date: 25.10.16
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Users</title>
    <link rel="stylesheet" href="<c:url value="/css/normalize.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/main_page.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/user_page.css"/>">
</head>
<body>
<div class="w-nav navigation-bar" data-collapse="medium" data-animation="default" data-duration="400" data-contain="1">
    <div class="w-container">
        <a class="w-nav-brand w--current brand-link" href="/">
            <h1 class="brand-text">Ilcom-messages</h1>
        </a>
        <c:if test="${not empty user}">
            <nav class="w-nav-menu navigation-menu" role="navigation">
                <a class="w-nav-link w--current navigation-link" style="max-width: 940px;"
                   href="/user">${user.getName()}</a>
            </nav>
        </c:if>
    </div>
</div>
<div class="w-section users-section centered">
    <div class="w-container" data-ix="new-interaction">
        <h1 class="hero-heading" data-ix="fade-in-bottom-page-loads">find your friens</h1>
    </div>
</div>
<c:forEach var="user" items="${usersList}">
    <div class="wf-selected ">
        <div class="w-container">
            <a class="w-inline-block person" href="/messages?email=${user.getEmail()}">
                <div>
                    <div class="opponent-name">${user.getName()}</div>
                </div>
            </a>
        </div>
    </div>
</c:forEach>
<div class="w-section footer center">
    <div class="w-container">
        <div class="footer-text">© 2016, ILMAZ, Inc. All Rights Reserved.</div>
    </div>
</div>
</body>
</html>
