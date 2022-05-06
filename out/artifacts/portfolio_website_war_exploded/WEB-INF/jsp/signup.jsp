
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
