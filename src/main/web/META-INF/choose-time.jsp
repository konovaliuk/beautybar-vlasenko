<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 06.09.2018
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/styles.css">

</head>
<body>
<c:out value="${user}, Hello!"/>
<div class="topnav">
    <a href ="../index.jsp">Главная</a>
    <a href ="Servlettest?command=chooseservicetype">Записаться</a>
    <a href ="Servlettest?command=feedbackmasters">Ocтавить отзыв</a>
    <div class="topnav-right">
        <a href="../jsp/login.jsp">Войти</a>
        <br/>
        <a href="../jsp/signup.jsp">Зарегистрироваться</a>
    </div>
</div>
<img  src = "../source/the-beauty-bar-logo-400px.jpg">
<c:out value="Date: ${date}"/>
<table>
    <tr>
        <c:forEach items="${freetimes}" var="item">

        <td><a href="Servlettest?command=recordbooking&time=${item}">
            <c:out value="${item}"/>
        </a></td>
        </c:forEach>
    </tr>

</table>
</body>
</html>
