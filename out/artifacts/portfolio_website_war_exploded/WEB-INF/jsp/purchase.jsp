<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>外星購物 | 購買清單</title>
    <link href="/static/css/headerFooter.css" rel="stylesheet">
    <link href="/static/css/main.css" rel="stylesheet">
    <link href="/static/css/product.css" rel="stylesheet">
    <link href="/static/css/cart.css" rel="stylesheet">
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
                                        <div class="shopee-header-section shopee-header-section--simple" style="padding-top: 0px;">
                                            <c:if test="${empty carts}">
                                                <div class="_1GvJNw _1zPmQi" >
                                                    <div class="_1y4Fn4">
                                                    </div>
                                                    <div class="xkMOGx">你的購買清單還是空的</div>
                                                    <a class="_10uf5U" href="${pageContext.request.contextPath}/"><button class="shopee-button-solid shopee-button-solid--primary"><span class="rCJzoB">去購物吧！</span></button></a>
                                                </div>

                                            </c:if>

                                            <c:if test="${not empty carts}">
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

                                                                        <a title="${cart.name}" href="${pageContext.request.contextPath}/product/${cart.itemId}">
                                                                            <img src="https://cf.shopee.tw/file/${cart.image}_tn" style="width: 80px;margin-left: 58px;height: 80px;">
                                                                        </a>

                                                                        <a  title="${cart.name}" href="${pageContext.request.contextPath}/product/${cart.itemId}" class="_1Z2fe1 _3t5Sij" style="width: 243.5px">
                                                                                ${cart.name}
                                                                        </a>

                                                                        <span class="cart_span" style="margin-left: 225px;margin-right: 85px;">$${cart.price}</span>

                                                                        <span class="cart_span" style="margin-right: 50px;">${cart.purchaseVolume}</span>

                                                                        <span class="cart_span" style="color: #ee4d2d;margin-right: 48px;">$${cart.purchaseVolume * cart.price}</span>

                                                                        <button class="Lur7Ey" style="color: #ee4d2d" onclick="window.location.href='${pageContext.request.contextPath}/product/${cart.itemId}'">
                                                                            再買一次
                                                                        </button>

                                                                    </div>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>

                                                <div class="shopee-page-controller">


                                                    <c:if test="${pageCategory=='page==0'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " >
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/1'">2</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/1'">2</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/2'">3</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <button class="shopee-button-solid shopee-button-solid--primary" >1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/1'">2</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/2'">3</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>

                                                    <c:if test="${pageCategory=='page1~4'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-1}'">
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>

                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'">${page+2}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+2}'">${page+3}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <c:forEach var="i" begin="0" end="${page-1}">
                                                                <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${i}'">${i+1}</button>
                                                            </c:forEach>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+2}'">${page+3}</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>

                                                    <c:if test="${pageCategory=='page>=5'}">
                                                        <button class="shopee-icon-button shopee-icon-button--left " onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-1}">
                                                            <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-left"><g><path d="m8.5 11c-.1 0-.2 0-.3-.1l-6-5c-.1-.1-.2-.3-.2-.4s.1-.3.2-.4l6-5c .2-.2.5-.1.7.1s.1.5-.1.7l-5.5 4.6 5.5 4.6c.2.2.2.5.1.7-.1.1-.3.2-.4.2z"></path></g></svg></button>
                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='1'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'">${page+2}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='2'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+2}'">${page+3}</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='3'}">
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/0'">1</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/1'">2</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-2}'">${page-1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page-1}'">${page}</button>
                                                            <button class="shopee-button-solid shopee-button-solid--primary">${page+1}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'">${page+2}</button>
                                                            <button class="shopee-button-no-outline" onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+2}'">${page+3}</button>
                                                            <button class="shopee-button-no-outline shopee-button-no-outline--non-click">...</button>
                                                        </c:if>

                                                        <c:if test="${pageRemain=='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right "><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                        <c:if test="${pageRemain!='0'}">
                                                            <button class="shopee-icon-button shopee-icon-button--right " onclick="window.location.href='${pageContext.request.contextPath}/user/purchase/${page+1}'"><svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path></svg></button>
                                                        </c:if>

                                                    </c:if>




                                                </div>
                                            </c:if>



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
