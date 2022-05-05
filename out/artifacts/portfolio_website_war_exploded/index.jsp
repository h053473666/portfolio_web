<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>

    <div>
      <%--導航--%>
      <div class="span4">
        <a href="https://github.com/h053473666/portfolio_website">github</a>
        <%
          String account = (String) session.getAttribute("account");
          if(account==null)  {
        %>
        <a href="${pageContext.request.contextPath}/user/signup">註冊</a>
        <a href="${pageContext.request.contextPath}/user/login">登入</a>
        <%
        } else {
        %>
        <%=session.getAttribute("account")%>
        <a href="${pageContext.request.contextPath}/user/logout">登出</a>
        <%
          }
        %>
      </div>
      <%--標題 搜索框 購物車--%>
      <div class="span4">
        <a href="${pageContext.request.contextPath}/">外星購物</a>
        <form class="form-search">
          <input class="input-medium search-query" type="text" /> <button type="submit" class="btn">查找</button>
        </form>
        <a href="#">cart</a>
      </div>
      <div class="span4">
        <img alt="25x25" src="https://cf.shopee.tw/file/17f3879a1872099681d7b85101e187db_tn" />
      </div>



    </div>










  </body>
</html>
