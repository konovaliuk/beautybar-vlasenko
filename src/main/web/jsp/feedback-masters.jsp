<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 07.09.2018
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
gggghhhh
<table>
    <c:forEach items="${masters}" var="item">
        <tr>
            <td><a href="Servlettest?command=writefeedback&master=${item}&pagenumber=1">
                <c:out value="${item}"/>
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
