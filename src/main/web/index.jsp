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
  </head>
  <body>

  <form action="Servlettest" >
    <%--<jsp: param name="command" value="login"/>--%>
      <input type="submit" value="Execute">
  </form>
  <h3>Login</h3>
  <hr/>

  <a href="../jsp/login.jsp">Войти</a>
  <br/>
  <a href="../jsp/signup.jsp">Зарегистрироваться</a>
  <br/>
  <br/>
  <a href ="Servlettest?command=chooseservicetype">Записаться</a>
  <br/>
  <a href ="Servlettest?command=feedbackmasters">Ocтавить отзыв</a>

  <hr/>
  </body>
</html>
