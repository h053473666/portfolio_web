<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="static/css/headerFooter.css" rel="stylesheet">
    <link rel="stylesheet" data-modern="true" href="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/bundle.985608fa4d1c10176abe.css">
    <style data-modern="true" data-href="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/1540.2f8bafdc9fcc811f0ee0.css"></style>
    <link rel="stylesheet" type="text/css" href="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/8257.5874ac0691e6dfacfa09.css">

    <link href="static/css/index.css" rel="stylesheet">

</head>
<body class="nt-s nl-l">



    <div id="main">
        <div>
            <div class="main">
                <div class="dYFPlI">
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
                                        <a href="${pageContext.request.contextPath}/user/signup" class="_2TLLZP ZUq1cc">
                                            註冊
                                        </a>
                                        <span>  </span>
                                        <a href="${pageContext.request.contextPath}/user/login" class="_2TLLZP ZUq1cc">
                                            登入
                                        </a>
                                    </li>

                                </ul>

                            </div>
                        </div>
                        <div class="container-wrapper header-with-search-wrapper">
                            <div class="container header-with-search">
                                <a href="${pageContext.request.contextPath}/">
                                    <img src="static/image/alien_shop.png" width="202" height="59">
                                </a>

                                <div class="header-with-search__search-section" style="padding-top: 10px;">
                                    <div class="shopee-searchbar" role="combobox" aria-expanded="false" aria-owns="shopee-searchbar-listbox">

                                        <form role="search" class="shopee-searchbar-input" autocomplete="off" action="/inputSearch" method="post">
                                            <input class="shopee-searchbar-input__input" maxlength="128" autocomplete="off" aria-autocomplete="list" name="name" required style="height: 34px;">
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
                                                    <%-- cart if判斷  --%>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="display: contents;">
                        <div class="xCao3k N2AB73" style="margin-top: 0px;">
                            <div class="home-page">
                                <div role="main" class="container">
                                    <div class="_4FitN7"></div>
                                    <div class="section-below-the-fold">
                                        <div class="home-category-list">
                                            <div class="shopee-header-section shopee-header-section--simple">
                                                <div class="shopee-header-section__header"><div class="shopee-header-section__header__title">分類</div></div>
                                                <div>

                                                    <a href="${pageContext.request.contextPath}/category/girls_clothes/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/17f3879a1872099681d7b85101e187db_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/boys_clothes/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/e47ff35a61d8e74bd3a54bbf1f65952c_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/fitness/rank/asc/0/" >
                                                        <img src="https://cf.shopee.tw/file/1f86527d394e356d78a41c17108ec212_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/shoes/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/99ed4f6ef9a452a49c4070756d0048fb_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/girls_accessories_gold/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/1e4fbb940b5f4230458162f615a947b4_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/beauty_care/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/227ec8335e695172de26c637ec8f8697_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/baby_and_mother/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/ee4b2cc17b24a6d00f522f0a52624982_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/girls_bags_boutique/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/a9fd9ed0217c33044cb15573f28ea805_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/boys_bags_and_accessories/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/e7edce689c35c47dc2ef0b5642fc0813_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/outdoors_travel/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/f83aeaa75e9081b1f19b92d4b70f616c_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/cultural_and_creative_products/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/4d4278a8b5ce40f49ab0b25244a14329_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/other/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/f3f43529ce72a10513650704f73d2acf_tn" style="height: 96.4px" width="96.4px">
                                                    </a>



                                                </div>

                                                <div>

                                                    <a href="${pageContext.request.contextPath}/category/book/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/b1edb3defd6f3d59016fe881f6b9aab5_tn" title="女生衣著" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/home_life/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/7f7b2a96de6739539bdf9b00108784c0_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/food_souvenirs/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/4a20aaebe71427b3141fbaa186aaec16_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/auto_parts/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/41e63c17a4e0412883fac61d94592268_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/game/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/2ce3822327a87bd4e3e96a131e5ea082_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/entertainment_collection/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/1071d365b731ef6e2619699c3b6d3492_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/pet/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/253830d7b66ebfc16b976c2f26643fa8_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/mobile_tablet_and_peripherals/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/508706d0720263ce8ee415bce40d0d33_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/laptop/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/c62e3d24ff3082424c0d1267508a1df9_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/home_appliances_audio_and_video/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/7cc775aebb62745cd5c881d9bbff25a6_tn" style="height: 96.4px" width="96.4px">
                                                    </a>

                                                    <a href="${pageContext.request.contextPath}/category/service_ticket/rank/asc/0" >
                                                        <img src="https://cf.shopee.tw/file/289649cbdcbd0597b89db6a127d0c0e5_tn" style="height: 96.4px" width="96.4px">
                                                    </a>


                                                </div>

                                                <div class="KNQorU" style="padding-top: 40px;padding-bottom: 40px;"><h1 class="gpbev8">猜你喜歡</h1><hr class="k68Wl1"></div>
                                                <div class="tIJtcv row">
                                                    <c:forEach var="recommend" items="${recommends}">
                                                        <div class="httLi0 col-xs-2">
                                                        <a data-sqe="link" href="${pageContext.request.contextPath}/product/${recommend.itemId}">
                                                            <div class="tWpFe2">
                                                                <div class="VTjd7p">
                                                                    <div class="yvbeD6 KUUypF">
                                                                        <img width="invalid-value" height="invalid-value" alt="${recommend.name}" class="_7DTxhh vc8g9F" style="object-fit: contain" src="https://cf.shopee.tw/file/${recommend.image}_tn">
                                                                        <div class="aLgMTQ">

                                                                        </div>
                                                                    </div>
                                                                    <div class="KMyn8J">
                                                                        <div class="dpiR4u">
                                                                            <div class="FDn--+">
                                                                                <div class="ie3A+n bM+7UW Cve6sh">
                                                                                    ${recommend.name}
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="hpDKMN">
                                                                            <div class="vioxXd rVLWG6">
                                                                                <span class="recFju">$</span>
                                                                                <span class="ZEgDH9">${recommend.price}</span>
                                                                                <span class="r6HknA" style="float: right">已售出 ${recommend.salesVolume}</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    </c:forEach>
                                                </div>
                                                <div class="qqV7Rl"><a class="btn btn-light btn--m btn--inline btn-light--link FA8aij" href="${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/1">查看更多</a></div>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                    <footer role="contentinfo" class="_5mVtqL uZncG4">
                        <div class="PjIOU+">
                            <div class="jP2PzH">
                                <div class="-96EVm">
                                    <div class="_0lbTUw syJk0q">
                                        此網站僅學習使用，無任何商業用途
                                    </div><div class="qtxc6i">
                                    <div class="iDTkf9">
                                        <a href="https://github.com/h053473666/portfolio_website" class="syJk0q _1yz5p4">github</a>
                                    </div>
                                    <div class="iDTkf9">
                                        <a href="https://www.kaggle.com/h053473666" class="syJk0q _1yz5p4">kaggle</a>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
    </div>



</body>
</html>
