<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022/5/7
  Time: 下午 06:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach var="recommend" items="${recommends}">
        <a href="${pageContext.request.contextPath}/product/${recommend.itemId}">
            <img src="https://cf.shopee.tw/file/${recommend.image}_tn"></image>
        </a>
    </c:forEach>
</body>
</html>
