<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员登录界面</title>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<center>
    <form action="${pageContext.request.contextPath }/AdminLoginServlet" method="get">
        <p>用户名：<input class="form-control" type="text" name="id" placeholder="请输入管理员ID"/>
        <p/>
        <p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input class="form-control" type="password" name="password"
                                             placeholder="请输入密码"/>
        <p/>
        <br/>
        <input class="btn btn-primary" type="submit" value="登录">
    </form>
</center>
</body>
</html>