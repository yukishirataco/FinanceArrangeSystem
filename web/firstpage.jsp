<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tooltip Menu</title>
    <meta name="description" content="Blueprint: Tooltip Menu"/>
    <meta name="keywords" content="Tooltip Menu, navigation, tooltip, menu, css, web development, template"/>
    <link rel="stylesheet" type="text/css" href="css/default.css"/>
    <link rel="stylesheet" type="text/css" href="css/component.css"/>
    <script src="js/modernizr.custom.js"></script>


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>家庭理财管理系统</title>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <style type="text/css">
        .demo {
            padding: 2em 0;
            transform: translate3d(0, 0, 0);
        }

        .navbar {
            width: 150px;
            height: 150px;
            line-height: 150px;
            border-radius: 50%;
            background: #fff;
            margin: 70px auto;
            position: relative;
            cursor: pointer;
            text-align: center;
            font-size: 1.75em;
            font-weight: bold;
            color: #47a3da;
            transition: 0.24s 0.2s;
        }

        .navbar:hover {
            background: rgba(255, 255, 255, 0.75);
        }

        .navbar .menu {
            list-style: none;
            padding: 0;
            margin: 0;
            position: absolute;
            top: -75px;
            left: -75px;
            border: 150px solid transparent;
            cursor: default;
            border-radius: 50%;
            transform: scale(0);
            transition: transform 1.4s 0.07s;
            z-index: -1;
        }

        .navbar:hover .menu {
            transition: transform 0.4s 0.08s, z-index 0s 0.5s;
            transform: scale(1);
            z-index: 1;
        }

        .navbar .menu li {
            position: absolute;
            top: -100px;
            left: -100px;
            transform-origin: 100px 100px;
            transition: all 0.5s 0.1s;
        }

        .navbar:hover .menu li {
            transition: all 0.6s;
        }

        .navbar .menu li a {
            width: 45px;
            height: 45px;
            line-height: 45px;
            border-radius: 50%;
            background: #fff;
            position: absolute;
            font-size: 60%;
            color: #47a3da;
            transition: 0.6s;
        }

        .navbar:hover .menu li:nth-child(1) {
            transition-delay: 0.02s;
            transform: rotate(85deg);
        }

        .navbar:hover .menu li:nth-child(1) a {
            transition-delay: 0.04s;
            transform: rotate(635deg);
        }

        .navbar:hover .menu li:nth-child(2) {
            transition-delay: 0.04s;
            transform: rotate(125deg);
        }

        .navbar:hover .menu li:nth-child(2) a {
            transition-delay: 0.08s;
            transform: rotate(595deg);
        }

        .navbar:hover .menu li:nth-child(3) {
            transition-delay: 0.06s;
            transform: rotate(165deg);
        }

        .navbar:hover .menu li:nth-child(3) a {
            transition-delay: 0.12s;
            transform: rotate(555deg);
        }

        .navbar:hover .menu li:nth-child(4) {
            transition-delay: 0.08s;
            transform: rotate(205deg);
        }

        .navbar:hover .menu li:nth-child(4) a {
            transition-delay: 0.16s;
            transform: rotate(515deg);
        }

        .navbar:hover .menu li:nth-child(5) {
            transition-delay: 0.1s;
            transform: rotate(245deg);
        }

        .navbar:hover .menu li:nth-child(5) a {
            transition-delay: 0.2s;
            transform: rotate(475deg);
        }

        .navbar:hover .menu li:nth-child(6) {
            transition-delay: 0.12s;
            transform: rotate(285deg);
        }

        .navbar:hover .menu li:nth-child(6) a {
            transition-delay: 0.24s;
            transform: rotate(435deg);
        }

        .navbar:hover .menu li:nth-child(7) {
            transition-delay: 0.14s;
            transform: rotate(325deg);
        }

        .navbar:hover .menu li:nth-child(7) a {
            transition-delay: 0.28s;
            transform: rotate(395deg);
        }

        .navbar:hover .menu li:nth-child(8) {
            transition-delay: 0.16s;
            transform: rotate(365deg);
        }

        .navbar:hover .menu li:nth-child(8) a {
            transition-delay: 0.32s;
            transform: rotate(355deg);
        }

        .navbar:hover .menu li:nth-child(9) {
            transition-delay: 0.18s;
            transform: rotate(405deg);
        }

        .navbar:hover .menu li:nth-child(9) a {
            transition-delay: 0.36s;
            transform: rotate(315deg);
        }
    </style>


</head>
<body>
<div class="container">
    <header class="clearfix">
        <span>F F M S <span class="bp-icon bp-icon-about" data-content="家庭理财系统，你值得拥有！"></span></span>
        <h1>家庭理财管理系统</h1>
        <nav>
            <a href="http://www.baidu.com/" class="bp-icon bp-icon-prev" data-info="百度一下"><span>Htmleaf</span></a>
            <!--a href="" class="bp-icon bp-icon-next" data-info="next Blueprint"><span>Next Blueprint</span></a-->
            <a href="http://www.htmleaf.com/" class="bp-icon bp-icon-drop"
               data-info="了解详情"><span>back Htmleaf</span></a>
            <a href="http://www.htmleaf.com/" class="bp-icon bp-icon-archive" data-info="打印设备"><span>Htmleaf</span></a>
        </nav>
    </header>
    <div class="demo">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar">主菜单
                        <ul class="menu">
                            <li><a href="${pageContext.request.contextPath }/user_register.jsp">注册</a></li>
                            <li><a href="${pageContext.request.contextPath }/user_login.jsp">登录</a></li>
                            <li><a href="#" class="fa fa-rss"></a></li>
                            <li><a href="#" class="fa fa-instagram"></a></li>
                            <li><a href="#" class="fa fa-skype"></a></li>
                            <li><a href="#" class="fa fa-github"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/cbpTooltipMenu.min.js"></script>
    <script>
        var menu = new cbpTooltipMenu(document.getElementById('cbp-tm-menu'));
    </script>
    <br/>
    <center>
        <div id="footer">CopyRight@2017UPC software engineering</div>
    </center>
</body>
</html>
