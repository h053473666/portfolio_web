
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>外星購物 | 猜你喜歡</title>
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
                    <div style="display: contents;">
                        <div class="xCao3k N2AB73" style="margin-top: 0px;">
                            <div class="home-page">
                                <div role="main" class="container">
                                    <div class="_4FitN7"></div>
                                    <div class="section-below-the-fold">
                                        <div class="home-category-list">
                                            <div class="shopee-header-section shopee-header-section--simple">

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
                                                <div class="shopee-page-controller">
                                                    <c:if test="${page==0}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " >
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                        <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page+1}'">2</button>
                                                        <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page+2}'">3</button>
                                                        <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                    </c:if>

                                                    <c:if test="${page==1}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page-1}'">
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page-1}'" >1</button>
                                                        <button class="shopee-button-solid shopee-button-solid--primary" >2</button>
                                                        <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page+1}'">3</button>
                                                        <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                    </c:if>

                                                    <c:if test="${page==2}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page-1}'">
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page-2}'">1</button>
                                                        <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/${page-1}'">2</button>
                                                        <button class="shopee-button-solid shopee-button-solid--primary">3</button>
                                                        <button class="shopee-icon-button shopee-icon-button--right " ><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                    </c:if>

                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>

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
