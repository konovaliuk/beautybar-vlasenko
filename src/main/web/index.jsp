<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 08.08.2018
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="css/styles.css">

  </head>
  <body>

    <%--<jsp: param name="command" value="login"/>--%>
      <div class="topnav">
        <a href ="index.jsp">Главная</a>
        <a href ="Servlettest?command=chooseservicetype">Записаться</a>
        <a href ="Servlettest?command=feedbackmasters">Ocтавить отзыв</a>
        <div class="topnav-right">
          <a href="../jsp/login.jsp">Войти</a>
          <br/>
          <a href="../jsp/signup.jsp">Зарегистрироваться</a>
        </div>
      </div>
    <img  src = "source/the-beauty-bar-logo-400px.jpg">
    <div class="fixed">
  <a href="../jsp/workerlogin.jsp">Для персонала</a>
    </div>


  <hr/>

  </body>
</html>
