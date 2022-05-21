
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>外星購物</title>
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
                                            <c:if test="${searchName != null}">
                                                <h1 class="shopee-search-result-header"><svg viewBox="0 0 18 24" class="shopee-svg-icon icon-hint-bulb"><g transform="translate(-355 -149)"><g transform="translate(355 149)"><g fill-rule="nonzero" transform="translate(5.4 19.155556)"><path d="m1.08489412 1.77777778h5.1879153c.51164401 0 .92641344-.39796911.92641344-.88888889s-.41476943-.88888889-.92641344-.88888889h-5.1879153c-.51164402 0-.92641345.39796911-.92641345.88888889s.41476943.88888889.92641345.88888889z"></path><g transform="translate(1.9 2.666667)"><path d="m .75 1.77777778h2.1c.41421356 0 .75-.39796911.75-.88888889s-.33578644-.88888889-.75-.88888889h-2.1c-.41421356 0-.75.39796911-.75.88888889s.33578644.88888889.75.88888889z"></path></g></g><path d="m8.1 8.77777718v4.66666782c0 .4295545.40294373.7777772.9.7777772s.9-.3482227.9-.7777772v-4.66666782c0-.42955447-.40294373-.77777718-.9-.77777718s-.9.34822271-.9.77777718z" fill-rule="nonzero"></path><path d="m8.1 5.33333333v.88889432c0 .49091978.40294373.88888889.9.88888889s.9-.39796911.9-.88888889v-.88889432c0-.49091977-.40294373-.88888889-.9-.88888889s-.9.39796912-.9.88888889z" fill-rule="nonzero"></path><path d="m8.80092773 0c-4.86181776 0-8.80092773 3.97866667-8.80092773 8.88888889 0 1.69422221.47617651 3.26933331 1.295126 4.61333331l2.50316913 3.9768889c.30201078.4782222.84303623.7697778 1.42482388.7697778h7.17785139c.7077799 0 1.3618277-.368 1.7027479-.9617778l2.3252977-4.0213333c.7411308-1.2888889 1.1728395-2.7786667 1.1728395-4.37688891 0-4.91022222-3.9409628-8.88888889-8.80092777-8.88888889m0 1.77777778c3.82979317 0 6.94810087 3.18933333 6.94810087 7.11111111 0 1.24444441-.3168334 2.43022221-.9393833 3.51466671l-2.3252977 4.0213333c-.0166754.0284444-.0481735.0462222-.0833772.0462222h-7.07224026l-2.43461454-3.8648889c-.68184029-1.12-1.04128871-2.4053333-1.04128871-3.71733331 0-3.92177778 3.11645483-7.11111111 6.94810084-7.11111111"></path></g></g></svg><span class="shopee-search-result-header__text">'<span class="shopee-search-result-header__text-highlight" style="color: rgb(238, 77, 45); font-weight: 400;">${searchName}</span>'搜尋結果</span></h1>
                                            </c:if>
                                            <c:if test="${searchName == null}">
                                                <h1 class="shopee-search-result-header"><svg viewBox="0 0 18 24" class="shopee-svg-icon icon-hint-bulb"><g transform="translate(-355 -149)"><g transform="translate(355 149)"><g fill-rule="nonzero" transform="translate(5.4 19.155556)"><path d="m1.08489412 1.77777778h5.1879153c.51164401 0 .92641344-.39796911.92641344-.88888889s-.41476943-.88888889-.92641344-.88888889h-5.1879153c-.51164402 0-.92641345.39796911-.92641345.88888889s.41476943.88888889.92641345.88888889z"></path><g transform="translate(1.9 2.666667)"><path d="m .75 1.77777778h2.1c.41421356 0 .75-.39796911.75-.88888889s-.33578644-.88888889-.75-.88888889h-2.1c-.41421356 0-.75.39796911-.75.88888889s.33578644.88888889.75.88888889z"></path></g></g><path d="m8.1 8.77777718v4.66666782c0 .4295545.40294373.7777772.9.7777772s.9-.3482227.9-.7777772v-4.66666782c0-.42955447-.40294373-.77777718-.9-.77777718s-.9.34822271-.9.77777718z" fill-rule="nonzero"></path><path d="m8.1 5.33333333v.88889432c0 .49091978.40294373.88888889.9.88888889s.9-.39796911.9-.88888889v-.88889432c0-.49091977-.40294373-.88888889-.9-.88888889s-.9.39796912-.9.88888889z" fill-rule="nonzero"></path><path d="m8.80092773 0c-4.86181776 0-8.80092773 3.97866667-8.80092773 8.88888889 0 1.69422221.47617651 3.26933331 1.295126 4.61333331l2.50316913 3.9768889c.30201078.4782222.84303623.7697778 1.42482388.7697778h7.17785139c.7077799 0 1.3618277-.368 1.7027479-.9617778l2.3252977-4.0213333c.7411308-1.2888889 1.1728395-2.7786667 1.1728395-4.37688891 0-4.91022222-3.9409628-8.88888889-8.80092777-8.88888889m0 1.77777778c3.82979317 0 6.94810087 3.18933333 6.94810087 7.11111111 0 1.24444441-.3168334 2.43022221-.9393833 3.51466671l-2.3252977 4.0213333c-.0166754.0284444-.0481735.0462222-.0833772.0462222h-7.07224026l-2.43461454-3.8648889c-.68184029-1.12-1.04128871-2.4053333-1.04128871-3.71733331 0-3.92177778 3.11645483-7.11111111 6.94810084-7.11111111"></path></g></g></svg><span class="shopee-search-result-header__text">'<span class="shopee-search-result-header__text-highlight" style="color: rgb(238, 77, 45); font-weight: 400;">${category}</span>'分類</span></h1>
                                            </c:if>
                                            <div class="shopee-sort-bar " style="border-bottom-width: 8px;margin-bottom: 8px;">
                                                <span class="shopee-sort-bar__label">篩選</span>
                                                <div class="shopee-sort-by-options">
                                                    <c:if test="${searchName != null}">
                                                        <c:if test="${orderBy == 'rank'}">
                                                            <div class="shopee-sort-by-options__option shopee-sort-by-options__option--selected" style="background-color: rgb(238, 77, 45);">
                                                                綜合排名
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${orderBy != 'rank'}">
                                                            <div class="shopee-sort-by-options__option" onclick="window.location.href='${pageContext.request.contextPath}/search/${searchName}/rank/asc/0'">
                                                                綜合排名
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${orderBy == 'sales'}">
                                                            <div class="shopee-sort-by-options__option shopee-sort-by-options__option--selected" style="background-color: rgb(238, 77, 45);">
                                                                最熱銷
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${orderBy != 'sales'}">
                                                            <div class="shopee-sort-by-options__option" onclick="window.location.href='${pageContext.request.contextPath}/search/${searchName}/sales/asc/0'">
                                                                最熱銷
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${orderBy == 'price' && orderByType == 'asc'}">
                                                            <div class="shopee-sort-by-options__option shopee-sort-by-options__option--selected" style="background-color: rgb(238, 77, 45);">
                                                                價格：低到高
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${!(orderBy == 'price' && orderByType == 'asc')}">
                                                            <div class="shopee-sort-by-options__option" onclick="window.location.href='${pageContext.request.contextPath}/search/${searchName}/price/asc/0'">
                                                                價格：低到高
                                                            </div>
                                                        </c:if>

                                                        <c:if test="${orderBy == 'price' && orderByType == 'desc'}">
                                                            <div class="shopee-sort-by-options__option shopee-sort-by-options__option--selected" style="background-color: rgb(238, 77, 45);">
                                                                價格：高到低
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${!(orderBy == 'price' && orderByType == 'desc')}">
                                                            <div class="shopee-sort-by-options__option" onclick="window.location.href='${pageContext.request.contextPath}/search/${searchName}/price/desc/0'">
                                                                價格：高到低
                                                            </div>
                                                        </c:if>
                                                    </c:if>
                                                    <c:if test="${searchName == null}">
                                                        <c:if test="${orderBy == 'rank'}">
                                                            <div class="shopee-sort-by-options__option shopee-sort-by-options__option--selected" style="background-color: rgb(238, 77, 45);">
                                                                綜合排名
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${orderBy != 'rank'}">
                                                            <div class="shopee-sort-by-options__option" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/rank/asc/0'">
                                                                綜合排名
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${orderBy == 'sales'}">
                                                            <div class="shopee-sort-by-options__option shopee-sort-by-options__option--selected" style="background-color: rgb(238, 77, 45);">
                                                                最熱銷
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${orderBy != 'sales'}">
                                                            <div class="shopee-sort-by-options__option" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/sales/asc/0'">
                                                                最熱銷
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${orderBy == 'price' && orderByType == 'asc'}">
                                                            <div class="shopee-sort-by-options__option shopee-sort-by-options__option--selected" style="background-color: rgb(238, 77, 45);">
                                                                價格：低到高
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${!(orderBy == 'price' && orderByType == 'asc')}">
                                                            <div class="shopee-sort-by-options__option" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/price/asc/0'">
                                                                價格：低到高
                                                            </div>
                                                        </c:if>

                                                        <c:if test="${orderBy == 'price' && orderByType == 'desc'}">
                                                            <div class="shopee-sort-by-options__option shopee-sort-by-options__option--selected" style="background-color: rgb(238, 77, 45);">
                                                                價格：高到低
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${!(orderBy == 'price' && orderByType == 'desc')}">
                                                            <div class="shopee-sort-by-options__option" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/price/desc/0'">
                                                                價格：高到低
                                                            </div>
                                                        </c:if>
                                                    </c:if>

                                                </div>
                                            </div>
                                            <div class="tIJtcv row">
                                                <c:forEach var="product" items="${products}">
                                                    <div class="httLi0 col-xs-2">
                                                        <a data-sqe="link" href="${pageContext.request.contextPath}/product/${product.itemId}">
                                                            <div class="tWpFe2">
                                                                <div class="VTjd7p">
                                                                    <div class="yvbeD6 KUUypF">
                                                                        <img width="invalid-value" height="invalid-value" alt="${product.name}" class="_7DTxhh vc8g9F" style="object-fit: contain" src="https://cf.shopee.tw/file/${product.image}_tn">
                                                                        <div class="aLgMTQ">

                                                                        </div>
                                                                    </div>
                                                                    <div class="KMyn8J">
                                                                        <div class="dpiR4u">
                                                                            <div class="FDn--+">
                                                                                <div class="ie3A+n bM+7UW Cve6sh">
                                                                                        ${product.name}
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="hpDKMN">
                                                                            <div class="vioxXd rVLWG6">
                                                                                <span class="recFju">$</span>
                                                                                <span class="ZEgDH9">${product.price}</span>
                                                                                <span class="r6HknA" style="float: right">已售出 ${product.salesVolume}</span>
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

                                                <c:if test="${searchName != null}">
                                                    <c:if test="${pageCategory=='page==0'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " >
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/1'">2</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/2'">3</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/2'">3</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>

                                                    <c:if test="${pageCategory=='page1~4'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-1}'">
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>

                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+2}'">${page+3}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+2}'">${page+3}</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>

                                                    <c:if test="${pageCategory=='page>=5'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-1}'">
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+2}'">${page+3}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+2}'">${page+3}</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/search/${name}/${orderBy}/${orderByType}/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>
                                                </c:if>

                                                <c:if test="${searchName == null}">
                                                    <c:if test="${pageCategory=='page==0'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " >
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/1'">2</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/2'">3</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/2'">3</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>

                                                    <c:if test="${pageCategory=='page1~4'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-1}'">
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>

                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+2}'">${page+3}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+2}'">${page+3}</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>

                                                    <c:if test="${pageCategory=='page>=5'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-1}'">
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+2}'">${page+3}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+2}'">${page+3}</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/category/${category}/${orderBy}/${orderByType}/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>
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
