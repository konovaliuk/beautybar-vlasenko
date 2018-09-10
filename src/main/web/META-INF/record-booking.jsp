<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 07.09.2018
  Time: 09:44
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
<br/>
    <c:out value="${user},"/>
<br/>
    <c:out value="Вы записаны!"/>
<br/>
    <c:out value="Услуга: ${service}"/>
<br/>
    <c:out value="Дата и время: ${timestamp}"/>
<br/>
    <c:out value="Мастер: ${master}"/>
<br/>

</body>
</html>
