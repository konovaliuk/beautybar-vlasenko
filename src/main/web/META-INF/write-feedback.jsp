<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 07.09.2018
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="feedback" method="POST" action="../Servlettest">
    <input type="hidden" name="command" value="postfeedback"/>
    Напишите свое мнение:<br/>
    <textarea name="comment" cols="40" rows="3"></textarea>
    <br/>
    Поставьте оценку:<br/>
    <p><input type="radio" name="mark" value="1"> 1<Br>
        <input type="radio" name="mark" value="2"> 2<Br>
        <input type="radio" name="mark" value="3"> 3<Br>
        <input type="radio" name="mark" value="4"> 4<Br>
        <input type="radio" name="mark" value="5"> 5<Br>
    </p>
    <input type ="submit" value="Отправить">
</form>

<table>
    <tr>
        <th>Oтзыв</th><th>Оценка</th><th>Дата</th><th>Мастер</th>
    </tr>
    <c:forEach items="${feedbacks}" var = "item">

        <tr>
            <td>
                <c:out value="${item.text}"/>
            </td>
            <td>
                <c:out value="${item.mark}"/>
            </td>
            <td>
                <c:out value="${item.date}"/>
            </td>
            <td>
                <c:out value="${item.worker.name}"/>
            </td>
        </tr>
    </c:forEach>
</table>

<c:if test="${totalPages > 1}">
    <div class="page-navigator">
        <c:forEach items="${pagenumbers}" var = "pagenumber">
            <c:if test="${pagenumber != -1 }">
                <a href="Servlettest?command=writefeedback&pagenumber=${pagenumber}" class="nav-item">${pagenumber}</a>
            </c:if>
            <c:if test="${pagenumber == -1 }">
                <span class="nav-item"> ... </span>
            </c:if>
        </c:forEach>
    </div>
</c:if>
</body>
</html>
