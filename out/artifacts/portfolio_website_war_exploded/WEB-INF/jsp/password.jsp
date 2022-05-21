<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>外星購物 | 更改密碼</title>
    <link href="/static/css/headerFooter.css" rel="stylesheet">
    <link href="/static/css/main.css" rel="stylesheet">
    <link rel="stylesheet" data-modern="true" href="/static/css/bundle.985608fa4d1c10176abe.css">
    <style data-modern="true" data-href="/static/css/1540.2f8bafdc9fcc811f0ee0.css"></style>
    <link rel="stylesheet" type="text/css" href="/static/css/8257.5874ac0691e6dfacfa09.css">
    <script src="/static/js/jquery.min.js"></script>
    <link href="/static/css/disappearMsg.css" rel="stylesheet">
    <script>
        function alertDisappearMsg(msg) {
            $('#disappearMsg').html(msg);
            $('#disappearMsg').show();
            setTimeout(function () {
                $('#disappearMsg').html('');
                $('#disappearMsg').hide();
            }, 2000);
        }
    </script>
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
                                <form action="/user/updatePassword" method="post">
                                    <div class="DQHtXe">
                                        <div class="FUOi1p">
                                            <h1 class="DSKSYU">更改密碼</h1>
                                            <div class="tk-R8Z">為了保護你帳號的安全，請不要分享你的密碼給其他人</div>
                                        </div><div class="fo5IeT">
                                        <div class="Kuz0mN">
                                            <div class="A8yLgM">
                                                <div class="ltFKuQ">
                                                    <div class="op-21F">
                                                        <label class="mlaS58" for="password">現在的密碼</label>
                                                    </div>
                                                    <div class="iqUYOb">
                                                        <input id="password" class="-wQUjw kpK-3W" type="password" autocomplete="off" name="password" value="">
                                                    </div>
                                                </div>
                                                <c:if test="${sessionScope.passwordError != null}">
                                                    <div class="ltFKuQ">
                                                        <div class="op-21F"></div>
                                                        <div class="iqUYOb rH3PQy">${sessionScope.passwordError}</div>
                                                    </div>
                                                    <% request.getSession().removeAttribute("passwordError"); %>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="Kuz0mN">
                                            <div class="A8yLgM">
                                                <div class="ltFKuQ">
                                                    <div class="op-21F">
                                                        <label class="mlaS58" for="newPassword">新的密碼</label>
                                                    </div>
                                                    <div class="iqUYOb">
                                                        <input id="newPassword" class="-wQUjw kpK-3W" type="password" autocomplete="off" name="passwordNew" value="">
                                                    </div>
                                                </div>
                                                <c:if test="${sessionScope.passwordNewError != null}">
                                                    <div class="ltFKuQ">
                                                        <div class="op-21F"></div>
                                                        <div class="iqUYOb rH3PQy">${sessionScope.passwordNewError}</div>
                                                    </div>
                                                    <% request.getSession().removeAttribute("passwordNewError"); %>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="Kuz0mN">
                                            <div class="A8yLgM">
                                                <div class="ltFKuQ">
                                                    <div class="op-21F">
                                                        <label class="mlaS58" for="newPasswordRepeat">確認密碼</label>
                                                    </div>
                                                    <div class="iqUYOb">
                                                        <input id="newPasswordRepeat" class="-wQUjw kpK-3W" type="password" autocomplete="off" name="passwordNewCheck" value="">
                                                    </div>
                                                </div>
                                                <c:if test="${sessionScope.passwordNewCheckError != null}">
                                                    <div class="ltFKuQ">
                                                        <div class="op-21F"></div>
                                                        <div class="iqUYOb rH3PQy">${sessionScope.passwordNewCheckError}</div>
                                                    </div>
                                                    <% request.getSession().removeAttribute("passwordNewCheckError"); %>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="Kuz0mN">
                                            <div class="RlzsL7"></div>
                                            <div class="vuqET4" style="padding-right: 370px;">
                                                <button type="submit" class="btn btn-solid-primary btn--m btn--inline btn-solid-primary" aria-disabled="true">確認</button>
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
<c:if test="${sessionScope.successUpdatePassword != null}">
    <div id="disappearMsg"></div>
    <script>
        alertDisappearMsg("${sessionScope.successUpdatePassword}")
    </script>
    <% request.getSession().removeAttribute("successUpdatePassword"); %>
</c:if>
</html>
