<%--
  Created by IntelliJ IDEA.
  User: npfjc
  Date: 2019/7/12
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/constraint.js"></script>

<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://gstatic.loli.net">
    <link href="https://fonts.loli.net/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="css/style.css">

    <!--<link rel="icon" href="Favicon.png"> -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>家庭财务管理系统</title>
</head>
<body>
<style>
    body {
        background-color: #e1e1e1;
    }
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">家庭财务管理系统</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">登录</a>
                </li>
                </li>
            </ul>

        </div>
    </div>
</nav>

<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">管理员登录</div>
                    <div class="card-body">
                        <form action="${pageContext.request.contextPath }/AdminLoginServlet" method="get">
                            <div class="form-group row">
                                <label for="d1" class="col-md-4 col-form-label text-md-right">管理员用户名</label>
                                <div class="col-md-6">
                                    <input type="text" id="d1" placeholder="请输入用户名" class="form-control" name="id"
                                           onblur="ma()" autofocus required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">密码</label>
                                <div class="col-md-6">
                                    <input type="password" id="password" class="form-control" name="password"
                                           placeholder="请输入密码" required>
                                </div>
                            </div>

                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary" onclick="return me();">
                                    登录
                                </button>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>

</main>


</body>
</html>