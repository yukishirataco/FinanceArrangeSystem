<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录界面</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/constraint.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<center>
    <h1>用户登录</h1>
    <%
        Object info = request.getAttribute("message");
        if (info != null)
            out.println(info);
    %>
    <form action="${pageContext.request.contextPath }/UserLoginServlet" method="get">
        <p>用户名：<input class="form-control" type="text" name="id" placeholder="请输入用户名" onblur="ma()"/><span
                id="d1"></span>
        <p/>
        <p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input class="form-control" type="password" name="password"
                                             placeholder="请输入密码"/>
        <p/>
        <br/>
        <input class="btn btn-primary" type="submit" value="登录" onclick="return me();">
        <p>尚无账户？请：<input class="btn btn-primary" type="button" value="注册账号"
                         onclick="location.href='${pageContext.request.contextPath}/user_register.jsp'">
        <p/>
        <p>管理员登录？请：<input class="btn btn-primary" type="button" value="点此登录"
                          onclick="location.href='${pageContext.request.contextPath}/admin_login.jsp'">
        <p/>
    </form>
</center>
</body>
</html>