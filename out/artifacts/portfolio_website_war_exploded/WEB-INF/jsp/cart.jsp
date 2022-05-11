<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022/5/7
  Time: 下午 06:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--    <form action="/cart/add-cart-purchase" method="post" class="form-horizontal">--%>

<%--        <input type="hidden" name="account" value=${sessionScope.account}>--%>
<%--        <input type="hidden" name="itemId" value=${carts.get(0).itemId}>--%>
<%--        <select name="purchaseVolume">--%>
<%--            <option value=1>1</option>--%>
<%--            <option value=2>2</option>--%>
<%--            <option value=3>3</option>--%>
<%--            <option value=4>4</option>--%>
<%--            <option value=5>5</option>--%>
<%--        </select>--%>
<%--        <input type="submit" value="加到購物車"/>--%>
<%--    </form>--%>
    <form action="/cart/add-cart-purchase" method="post" class="form-horizontal">--%>
        <c:forEach var="cart" items="${carts}">
            <a href="${pageContext.request.contextPath}/product/${cart.itemId}">
                <img src="https://cf.shopee.tw/file/${cart.image}_tn"></image>
            </a>
            <input type = "checkbox" name = "indexCarts" value = "${carts.indexOf(cart)}" />
        </c:forEach>
        <input type="submit" value="購買"/>
    </form>

</body>
</html>
