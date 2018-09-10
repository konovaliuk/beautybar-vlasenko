<%-- 
    Document   : login
    Created on : 21.02.2013, 21:16:54
    Author     : Artem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/styles.css">

    </head>
    <body>
    <div class="topnav">
        <a href ="../index.jsp">Главная</a>
        <a href ="../Servlettest?command=chooseservicetype">Записаться</a>
        <a href ="../Servlettest?command=feedbackmasters">Ocтавить отзыв</a>
        <div class="topnav-right">
            <a href="../jsp/login.jsp">Войти</a>
            <br/>
            <a href="../jsp/signup.jsp">Зарегистрироваться</a>
        </div>
    </div>
    <img  src = "../source/the-beauty-bar-logo-400px.jpg">
        <form name="loginForm" method="POST" action="../Servlettest">
            <input type="hidden" name="command" value ="login"/>
            Login:<br/>
            <input type="text" name="login" value =""> <br/>
            Password:<br/>
            <input type="password" name ="password" value="">
            <br/>
            <input type ="submit" value="Enter">
        </form>
        <hr/>
        <br/>
        <a href="../jsp/signup.jsp">sign up</a>
    </body>
</html>
