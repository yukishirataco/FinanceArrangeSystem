<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户主页</title>

</head>

<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
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
<center>
    <h1>用户主页</h1>

    <p>
    <div>欢迎您，用户：<%
        String name = (String) session.getAttribute("id");
        out.println(name);
        request.setAttribute("name", name);
    %></div>
    <p/>
    <%
        /*
            <div>
                <a href="${pageContext.request.contextPath }/UserGetUserByIdServlet3?id=${name}">查询信息</a>

            </div>
            <div>
                <a href="${pageContext.request.contextPath }/UserGetUserByIdServlet?id=${name}">修改密码</a>

            </div>
            <div>
                <a href="${pageContext.request.contextPath }/UserGetUserByIdServlet2?id=${name}">修改用户信息</a>

            </div>
            <p>
                <a href="invalidate.jsp">注销账号</a>
            <p/>*/
    %>
    <br/>
    <br/>
    <div class="demo">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar">主菜单
                        <ul class="menu">
                            <li><a href="${pageContext.request.contextPath }/UserGetUserByIdServlet3?id=${name}">查询</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath }/UserGetUserByIdServlet?id=${name}">密码</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath }/UserGetUserByIdServlet2?id=${name}">信息</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath }/invalidate.jsp">注销</a></li>
                            <li><a href="${pageContext.request.contextPath }/QueryCashIn.jsp">收入</a></li>
                            <li><a href="${pageContext.request.contextPath }/query_cashout.jsp">支出</a></li>
                            <li><a href="${pageContext.request.contextPath }/chart_output.jsp">报表</a></li>
                            <li><a href="${pageContext.request.contextPath }/GetAllServlet">证券</a></li>
                            <li><a href="http://quote.eastmoney.com/sh600000.html?from=BaiduAladdin">股票</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</center>
<br/>
<br/>
<br/>
<br/>
<center>
    <div id="footer">CopyRight@2017UPC software engineering</div>
</center>
</body>
</html>