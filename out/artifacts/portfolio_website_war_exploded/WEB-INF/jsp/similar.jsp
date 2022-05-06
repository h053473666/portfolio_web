
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>
        img {
            width: 188px;
            height: 188px;
        }
    </style>
</head>
<body>
    <c:forEach var="similarProduct" items="${similarProducts}">
        <a href="${pageContext.request.contextPath}/product/${similarProduct.itemId}">
            <img src="https://cf.shopee.tw/file/${similarProduct.image}_tn"></image>
        </a>
    </c:forEach>

</body>
</html>
