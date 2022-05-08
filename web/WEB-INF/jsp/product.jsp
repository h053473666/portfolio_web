<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022/5/6
  Time: 下午 06:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        img {
            width: 188px;
            height: 188px;
        }
    </style>
</head>
<body>
    <p>${product.itemId}</p>
    <p>${product.name}<p/>
    <p>${product.price}</p>
    <p>${product.salesVolume}</p>
    <p>
        <image src="https://cf.shopee.tw/file/${product.image}_tn"></image>
    </p>

    <c:forEach var="similarProduct" items="${similarProducts}">
        <a href="${pageContext.request.contextPath}/product/${similarProduct.itemId}">
            <img src="https://cf.shopee.tw/file/${similarProduct.image}_tn"></image>
        </a>
    </c:forEach>
    <p>
        <a href="${pageContext.request.contextPath}/similar/${product.itemId}/0">相似商品</a>
    </p>

    <c:forEach var="tracking" items="${sessionScope.trankings}">
        <span>${tracking}</span>
    </c:forEach>

    <c:forEach var="recommend" items="${recommends}">
        <a href="${pageContext.request.contextPath}/product/${recommend.itemId}">
            <img src="https://cf.shopee.tw/file/${recommend.image}_tn"></image>
        </a>
    </c:forEach>
    <p>
        <a href="${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/0">猜你喜歡</a>
    </p>








</body>
</html>
