<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022/5/5
  Time: 下午 09:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="span4">
        <a href="${pageContext.request.contextPath}/">外星購物</a>
    </div>

    <form action="/user/usersignup" method="post" class="form-horizontal">
        <div class="control-group">
            <label class="control-label">帳號</label>
            <div class="controls">
                <input name="account" type="text" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">密碼</label>
            <div class="controls">
                <input name="password"  type="password" />
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <button type="submit" class="btn">註冊</button>
            </div>
            <span>${msg}</span>
        </div>
    </form>
</body>
</html>
