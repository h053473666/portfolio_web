
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>外星購物 | 購物車</title>
    <link href="/static/css/headerFooter.css" rel="stylesheet">
    <link href="/static/css/main.css" rel="stylesheet">
    <link href="/static/css/product.css" rel="stylesheet">
    <link href="/static/css/cart.css" rel="stylesheet">
    <link rel="stylesheet" data-modern="true" href="/static/css/bundle.985608fa4d1c10176abe.css">
    <style data-modern="true" data-href="/static/css/1540.2f8bafdc9fcc811f0ee0.css"></style>
    <link rel="stylesheet" type="text/css" href="/static/css/8257.5874ac0691e6dfacfa09.css">
    <script src="/static/js/jquery.min.js"></script>
    <link href="/static/css/disappearMsg.css" rel="stylesheet">
    <script>
        function selectAll() {
            var checkBoxList = document.getElementsByName("indexCarts");
            var count = 0;
            for (let i = 0; i < checkBoxList.length; i++) {
                if (!checkBoxList[i].checked) {
                    count += 1;
                    checkBoxList[i].checked = true;
                }
            }
            if (count === 0) {
                for (let i = 0; i < checkBoxList.length; i++) {
                    checkBoxList[i].checked = false;
                }
            }
            checkboxOnclick();

        }
        function checkboxOnclick() {
            var checkBoxList = document.getElementsByName("indexCarts");
            var sum = 0;
            var amount;
            for (let i = 0; i < ${carts.size()}; i++) {
                if (checkBoxList[i].checked) {
                    amount = document.getElementsByName("amount")[i].value;
                    sum += Number(amount);
                }
            }
            $('#totalAmount').html("$"+sum);
        }

        function addCartPurchase() {
            var checkBoxList = document.getElementsByName("indexCarts");
            for (let i = 0; i < checkBoxList.length; i++) {
                if (checkBoxList[i].checked) {
                    document.cartProductForm.action = "${pageContext.request.contextPath}/cart/addCartPurchase";
                    document.cartProductForm.submit();
                    disabledButton()
                }
            }

        }

        function deleteCartByItemId() {
            document.cartProductForm.action = "${pageContext.request.contextPath}/cart/addCartPurchase";
            document.cartProductForm.submit();
        }

        function disabledButton() {
            document.getElementById("mainButton").disabled="disabled"
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
                                            <c:if test="${empty carts}">
                                                <div class="_1GvJNw _1zPmQi" >
                                                    <div class="_1y4Fn4">
                                                    </div>
                                                    <div class="xkMOGx">你的購物車還是空的</div>
                                                    <a class="_10uf5U" href="${pageContext.request.contextPath}/"><button class="shopee-button-solid shopee-button-solid--primary"><span class="rCJzoB">去購物吧！</span></button></a>
                                                </div>

                                            </c:if>

                                            <c:if test="${not empty carts}">
                                                <form action="" method="post" name="cartProductForm">
                                                    <div class="_2eZQze">
                                                        <div class="_35gBGg"></div>
                                                        <div class="_2cHnzN">商品</div>
                                                        <div class="_2UJcxH">單價</div>
                                                        <div class="_1SKeIp">數量</div>
                                                        <div class="_2LUhSC">總計</div>
                                                        <div class="HHdkhO">操作</div>
                                                    </div>



                                                    <c:forEach var="cart" items="${carts}">
                                                        <div class="_1K9yK1">
                                                            <div class="_1glehh">
                                                                <div class="_1BehlF">
                                                                    <div class="_-0yJ2-">
                                                                        <input type="checkbox" class="_1Lgvsy" name = "indexCarts" value = "${carts.indexOf(cart)}" onclick="checkboxOnclick()">


                                                                        <a title="${cart.name}" href="${pageContext.request.contextPath}/product/${cart.itemId}">
                                                                            <img src="https://cf.shopee.tw/file/${cart.image}_tn" style="width: 80px"; height="80px">
                                                                        </a>

                                                                        <a  title="${cart.name}" href="${pageContext.request.contextPath}/product/${cart.itemId}" class="_1Z2fe1 _3t5Sij" style="width: 243.5px">
                                                                            ${cart.name}
                                                                        </a>

                                                                        <span class="cart_span" style="margin-left: 225px;margin-right: 85px;">$${cart.price}</span>

                                                                        <span class="cart_span" style="margin-right: 50px;">${cart.purchaseVolume}</span>


                                                                        <input type='hidden' name='amount' value='${cart.purchaseVolume * cart.price}'>
                                                                        <span class="cart_span" style="color: #ee4d2d;margin-right: 40px;">$${cart.purchaseVolume * cart.price}</span>

                                                                        <button class="Lur7Ey" onclick="window.location.href='${pageContext.request.contextPath}/cart/deleteCart/${cart.itemId}/${cartVerification}'" type="button">刪除</button>

                                                                        <button class="Lur7Ey" style="color: #ee4d2d" onclick="window.location.href='${pageContext.request.contextPath}/similar/${cart.itemId}/0'" type="button">
                                                                            找相似
                                                                        </button>


                                                                    </div>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>

                                                    <div class="_2qn3bA _1F9REl">
                                                        <div class="_99kXGk _2xPkMD">

                                                        </div>
                                                        <div class="CsNHbu -Gs_Ma">
                                                            <button class="_3eoyj7 clear-btn-style" onclick="selectAll()" type="button">全選</button>
                                                            <div class="_2S5Vpa"></div>
                                                            <div class="_2n5_2u"></div>
                                                            <div class="_3p5aR1">
                                                                <div class="_2nE2iF">
                                                                    <div class="_2LXtFJ">
                                                                        <div class="ZxTZV3" id="totalAmount">$0</div>
                                                                    </div>
                                                                </div>
                                                                <div class="_1IjfdD">

                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="cartVerification" value="${cartVerification}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" type="button" onclick="addCartPurchase()" id="mainButton"><span class="_3zK-FN">去買單</span></button></div></div>
                                                </form>
                                            </c:if>


                                            <div>
                                                <div class="page-product__content">
                                                    <div class="page-product__content--left">
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
<c:if test="${sessionScope.successAddCartProduct != null}">
    <div id="disappearMsg"></div>
    <script>
        alertDisappearMsg("${sessionScope.successAddCartProduct}")
    </script>
    <% request.getSession().removeAttribute("successAddCartProduct"); %>
</c:if>


</body>
</html>
