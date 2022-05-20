
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
</head>
<body>
    <div class="shopee-top container-wrapper">
    <div class="navbar-wrapper container-wrapper">
        <div class="container navbar">
            <div class="flex v-center FAQGyh">
                <a href="https://github.com/h053473666/portfolio_website" target="_blank" rel="noopener noreferrer" class="_2TLLZP ZUq1cc">
                    github
                </a>
                <span></span>
                <a href="https://www.kaggle.com/h053473666" target="_blank" rel="noopener noreferrer" class="_2TLLZP ZUq1cc">
                    kaggle
                </a>
            </div>
            <div class="navbar__spacer"></div>
            <ul class="navbar__links">
                <li class="navbar__link navbar__link--tappable navbar__link--hoverable navbar__link--account">
                    <c:if test="${sessionScope.account == null}">
                        <a href="${pageContext.request.contextPath}/user/signup" class="_2TLLZP ZUq1cc">
                            註冊
                        </a>
                        <a href="${pageContext.request.contextPath}/user/login" class="_2TLLZP ZUq1cc">
                            登入
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.account != null}">

                        <span><%=session.getAttribute("account")%></span>
                        <a href="${pageContext.request.contextPath}/user/purchase/0" class="_2TLLZP ZUq1cc">購買清單</a>
                        <a href="${pageContext.request.contextPath}/user/password" class="_2TLLZP ZUq1cc">更改密碼</a>
                        <a href="${pageContext.request.contextPath}/user/logout" class="_2TLLZP ZUq1cc">登出</a>
                    </c:if>
                </li>

            </ul>

        </div>
    </div>
    <div class="container-wrapper header-with-search-wrapper">
        <div class="container header-with-search">
            <a href="${pageContext.request.contextPath}/">
                <img src="/static/image/alien_shop.png" width="202" height="59">
            </a>

            <div class="header-with-search__search-section" style="padding-top: 10px;">
                <div class="shopee-searchbar" role="combobox" aria-expanded="false" aria-owns="shopee-searchbar-listbox">

                    <form role="search" class="shopee-searchbar-input" autocomplete="off" action="/inputSearch" method="post">
                        <input class="shopee-searchbar-input__input" maxlength="256" autocomplete="off" aria-autocomplete="list" name="name" required style="height: 34px;">
                        <button class="btn btn-solid-primary btn--s btn--inline shopee-searchbar__search-button" type="submit">
                            <svg height="19" viewBox="0 0 19 19" width="19" class="shopee-svg-icon"><g fill-rule="evenodd" stroke="none" stroke-width="1"><g transform="translate(-1016 -32)"><g><g transform="translate(405 21)"><g transform="translate(611 11)"><path d="m8 16c4.418278 0 8-3.581722 8-8s-3.581722-8-8-8-8 3.581722-8 8 3.581722 8 8 8zm0-2c-3.3137085 0-6-2.6862915-6-6s2.6862915-6 6-6 6 2.6862915 6 6-2.6862915 6-6 6z"></path><path d="m12.2972351 13.7114222 4.9799555 4.919354c.3929077.3881263 1.0260608.3842503 1.4141871-.0086574.3881263-.3929076.3842503-1.0260607-.0086574-1.414187l-4.9799554-4.919354c-.3929077-.3881263-1.0260608-.3842503-1.4141871.0086573-.3881263.3929077-.3842503 1.0260608.0086573 1.4141871z"></path></g></g></g></g></g></svg></button>

                    </form>

                </div>
            </div>

            <div class="header-with-search__cart-wrapper">
                <div class="stardust-popover" id="cart_drawer_target_id">
                    <div role="button" class="stardust-popover__target">
                        <div class="cart-drawer-container">
                            <a class="cart-drawer flex v-center" href="${pageContext.request.contextPath}/cart">
                                <svg viewBox="0 0 26.6 25.6" class="shopee-svg-icon navbar__link-icon icon-shopping-cart-2"><polyline fill="none" points="2 1.7 5.5 1.7 9.6 18.3 21.2 18.3 24.6 6.1 7 6.1" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="2.5"></polyline><circle cx="10.7" cy="23" r="2.2" stroke="none"></circle><circle cx="19.7" cy="23" r="2.2" stroke="none"></circle>
                                </svg>
                                <c:if test="${sessionScope.cartSize > 0}">
                                    <div class="shopee-cart-number-badge">${sessionScope.cartSize}</div>
                                </c:if>

                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
