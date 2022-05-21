<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>外星購物 | 註冊</title>
    <link href="/static/css/headerFooter.css" rel="stylesheet">
    <link href="/static/css/main.css" rel="stylesheet">
    <link rel="stylesheet" data-modern="true" href="/static/css/bundle.985608fa4d1c10176abe.css">
    <style data-modern="true" data-href="/static/css/1540.2f8bafdc9fcc811f0ee0.css"></style>
    <link rel="stylesheet" type="text/css" href="/static/css/8257.5874ac0691e6dfacfa09.css">

</head>
<body class="nt-s nl-l">
<div id="main">
    <div>
        <div class="main">
            <div class="dYFPlI">
                <jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
                <div class="container pIHdXn" style="height: 421px;">
                    <div class="xMDeox">
                        <div class="Hvae38" role="main">
                            <form action="/user/userSignup" method="post">
                                <div class="DQHtXe">
                                    <div class="FUOi1p">
                                        <h1 class="DSKSYU">註冊</h1>
                                        <div class="tk-R8Z">帳號和密碼長度需為16個以內的英文或數字</div>
                                    </div><div class="fo5IeT">
                                    <div class="Kuz0mN">
                                        <div class="A8yLgM">
                                            <div class="ltFKuQ">
                                                <div class="op-21F">
                                                    <label class="mlaS58" for="password">帳號</label>
                                                </div>
                                                <div class="iqUYOb">
                                                    <input id="password" class="-wQUjw kpK-3W" type="text" autocomplete="off" name="account" value="">
                                                </div>
                                            </div>
                                            <C:if test="${sessionScope.accountError != null}">
                                                <div class="ltFKuQ">
                                                    <div class="op-21F"></div>
                                                    <div class="iqUYOb rH3PQy">${sessionScope.accountError}</div>
                                                </div>
                                                <% request.getSession().removeAttribute("accountError"); %>
                                            </C:if>

                                        </div>
                                    </div>
                                    <div class="Kuz0mN">
                                        <div class="A8yLgM">
                                            <div class="ltFKuQ">
                                                <div class="op-21F">
                                                    <label class="mlaS58" for="newPassword">密碼</label>
                                                </div>
                                                <div class="iqUYOb">
                                                    <input id="newPassword" class="-wQUjw kpK-3W" type="password" autocomplete="off" name="password" value="">
                                                </div>
                                            </div>
                                            <C:if test="${sessionScope.passwordError != null}">
                                                <div class="ltFKuQ">
                                                    <div class="op-21F"></div>
                                                    <div class="iqUYOb rH3PQy">${sessionScope.passwordError}</div>
                                                </div>
                                                <% request.getSession().removeAttribute("passwordError"); %>
                                            </C:if>
                                        </div>
                                    </div>
                                    <div class="Kuz0mN">
                                        <div class="RlzsL7"></div>
                                        <div class="vuqET4" style="padding-right: 370px;">
                                            <button type="submit" class="btn btn-solid-primary btn--m btn--inline btn-solid-primary" aria-disabled="true">註冊</button>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
            </div>
        </div>
    </div>
</div>



</body>
</html>
