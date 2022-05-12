<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022/5/7
  Time: 下午 06:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach var="product" items="${products}">
        <a href="${pageContext.request.contextPath}/product/${product.itemId}">
            <img src="https://cf.shopee.tw/file/${product.image}_tn"></image>
        </a>
    </c:forEach>

</body>
</html>
