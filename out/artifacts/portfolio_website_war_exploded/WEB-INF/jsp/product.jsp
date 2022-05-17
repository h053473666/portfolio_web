
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>外星購物 | ${product.name}</title>
    <link href="/static/css/headerFooter.css" rel="stylesheet">
    <link href="/static/css/main.css" rel="stylesheet">
    <link href="/static/css/product.css" rel="stylesheet">
    <link rel="stylesheet" data-modern="true" href="/static/css/bundle.985608fa4d1c10176abe.css">
    <style data-modern="true" data-href="/static/css/1540.2f8bafdc9fcc811f0ee0.css"></style>
    <link rel="stylesheet" type="text/css" href="/static/css/8257.5874ac0691e6dfacfa09.css">
    <script src="/static/js/jquery.min.js"></script>
    <link href="/static/css/disappearMsg.css" rel="stylesheet">
    <script>
        function addPurchase() {
            document.productForm.action = "${pageContext.request.contextPath}/cart/addPurchase";
            document.productForm.submit();
        }

        function addCart(){
            document.productForm.action="${pageContext.request.contextPath}/cart/addCart";
            document.productForm.submit();
        }

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
                <div style="display: contents;">
                    <div class="xCao3k N2AB73" style="margin-top: 0px;">
                        <div class="home-page">
                            <div role="main" class="container">
                                <div class="_4FitN7"></div>
                                <div class="section-below-the-fold">
                                    <div class="home-category-list">
                                        <div class="shopee-header-section shopee-header-section--simple" style="padding-top: 0px;">

                                            <div class="product-briefing flex card -Esc+w">
                                                <div class="KAHaP+" style="padding-top: 15px;padding-left: 15px;border-right-width: 15px;padding-right: 15px;padding-bottom: 15px;">
                                                    <div class="flex flex-column">
                                                        <div class="xljt99">
                                                            <div class="-r70Gw">
                                                                <div class="_12LYCl" style="display: none;"></div>
                                                                <div class="Mzs0kz">
                                                                    <img src="https://cf.shopee.tw/file/${product.image}" style="width: 450px;height: 450px">
                                                                </div>
                                                                <div class="_76IkfL"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="flex flex-auto HLQqkk">
                                                    <div class="flex-auto flex-column  imEX5V">
                                                        <div class="VCNVHn"><span>${product.name}</span></div>
                                                        <div class="flex W2tD8-">
                                                            <div class="flex SpMD0A">
                                                                <div class="_45NQT5">${product.salesVolume}</div>
                                                                <div class="Cv8D6q">已售出</div>
                                                            </div>
                                                        </div>
                                                        <div style="margin-top: 10px;">
                                                            <div class="flex flex-column">
                                                                <div class="flex flex-column _4ZZZt9">
                                                                    <div class="flex items-center">
                                                                        <div class="flex items-center X1ceUd">
                                                                            <div class="flex items-center">
                                                                                <div class="pmmxKx">$${product.price}</div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <form name="productForm" method="post">
                                                            <div class="PMuAq5">
                                                                <div class="flex flex-column">
                                                                    <div class="flex hInOdW -+gikn">
                                                                        <div class="flex flex-column">
                                                                            <div class="flex items-center G2C2rT">
                                                                                <div class="_0b8hHE">數量</div>
                                                                                <div class="flex items-center">
                                                                                    <div style="margin-right: 15px;">
                                                                                        <div class="_8cX-em shopee-input-quantity">
                                                                                            <select name="purchaseVolume" class="ZBzFwL" style="width: 62px;padding-left: 15px;">
                                                                                                <option value=1>1</option>
                                                                                                <option value=2>2</option>
                                                                                                <option value=3>3</option>
                                                                                                <option value=4>4</option>
                                                                                                <option value=5>5</option>
                                                                                            </select>
                                                                                            <input type="hidden" name="account" value=${sessionScope.account}>
                                                                                            <input type="hidden" name="itemId" value=${product.itemId}>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div style="margin-top: 15px;">
                                                                <div class="vdf0Mi">
                                                                    <div class="OozJX2">
                                                                        <button type="button" onclick="addCart()" class="btn btn-solid-primary btn--l GfiOwy" aria-disabled="false" style="background: rgba(255,87,34,.1);position: relative;overflow: visible;outline: 0;background: var(--brand-primary-light-color);color: var(--brand-primary-color);margin-left: 20px;margin-right: 15px;}">加入購物車</button>
                                                                        <button type="button" onclick="addPurchase()" class="btn btn-solid-primary btn--l GfiOwy" aria-disabled="false">直接購買</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>

                                                        <div style="margin-top: 30px; border-top: 1px solid rgba(0, 0, 0, 0.05);"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="page-product__content">
                                                    <div class="page-product__content--left">
                                                        <div class="recommendation-by-carousel">
                                                            <div>
                                                                <div class="shopee-header-section shopee-header-section--simple">
                                                                    <div class="shopee-header-section__header1">
                                                                        <div class="shopee-header-section__header__title"><div>相似商品</div></div><a class="shopee-header-section__header-link" tabindex="-1" href="${pageContext.request.contextPath}/similar/${product.itemId}/0"><button class="shopee-button-no-outline" style="color: #ee4d2d;">查看全部&nbsp;<svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button></a>
                                                                    </div>
                                                                    <div class="shopee-header-section__content">

                                                                    </div>
                                                                    <div class="tIJtcv row">
                                                                        <c:forEach var="similarProduct" items="${similarProducts}">
                                                                            <div class="httLi0 col-xs-2" style="flex-basis: 20%; max-width: 20%;">
                                                                                <a data-sqe="link" href="${pageContext.request.contextPath}/product/${similarProduct.itemId}">
                                                                                    <div class="tWpFe2">
                                                                                        <div class="VTjd7p">
                                                                                            <div class="yvbeD6 KUUypF">
                                                                                                <img width="invalid-value" height="invalid-value" alt="${similarProduct.name}" class="_7DTxhh vc8g9F" style="object-fit: contain" src="https://cf.shopee.tw/file/${similarProduct.image}_tn">
                                                                                                <div class="aLgMTQ">

                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="KMyn8J">
                                                                                                <div class="dpiR4u">
                                                                                                    <div class="FDn--+">
                                                                                                        <div class="ie3A+n bM+7UW Cve6sh">
                                                                                                                ${similarProduct.name}
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="hpDKMN">
                                                                                                    <div class="vioxXd rVLWG6">
                                                                                                        <span class="recFju">$</span>
                                                                                                        <span class="ZEgDH9">${similarProduct.price}</span>
                                                                                                        <span class="r6HknA" style="float: right">已售出 ${similarProduct.salesVolume}</span>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                        </c:forEach>
                                                                    </div>
                                                                </div>

                                                            </div>


                                                        </div>
                                                        <div class="recommendation-by-carousel">
                                                            <div>
                                                                <div class="shopee-header-section shopee-header-section--simple">
                                                                    <div class="shopee-header-section__header1">
                                                                        <div class="shopee-header-section__header__title"><div>猜你喜歡</div></div><a class="shopee-header-section__header-link" tabindex="-1" href="${pageContext.request.contextPath}/recommend/${recommendCacheIndex}/0"><button class="shopee-button-no-outline" style="color: #ee4d2d;">查看全部&nbsp;<svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button></a>
                                                                    </div>
                                                                    <div class="shopee-header-section__content">

                                                                    </div>
                                                                    <div class="tIJtcv row">
                                                                        <c:forEach var="recommend" items="${recommends}">
                                                                            <div class="httLi0 col-xs-2" style="flex-basis: 20%; max-width: 20%;">
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
                                                                </div>

                                                            </div>


                                                        </div>

                                                    </div>
                                                </div>

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
<div id="disappearMsg"></div>
<script>
    alertDisappearMsg("test")
</script>


</body>
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
    <form action="/cart/addCart" method="post" class="form-horizontal">
        <input type="hidden" name="account" value=${sessionScope.account}>
        <input type="hidden" name="itemId" value=${product.itemId}>
        <select name="purchaseVolume">
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
        </select>
        <input type="submit" value="加到購物車"/>

    </form>

    <form action="/cart/addpurchase" method="post" class="form-horizontal">
        <input type="hidden" name="account" value=${sessionScope.account}>
        <input type="hidden" name="itemId" value=${product.itemId}>
        <select name="purchaseVolume">
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
        </select>
        <input type="submit" value="加到購物車"/>

    </form>
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
