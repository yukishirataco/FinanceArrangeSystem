<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>家庭财务管理系统</title>
</head>
<%
    String name = (String) session.getAttribute("id");
    request.setAttribute("name", name);
%>
<script>
    function load_stock_account() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/GetAllServlet" width="100%" height="100%"></object>';
    }

    function load_journal() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/GetAllSSIsServlet" width="100%" height="100%"></object>';
    }

    function load_keep_stock() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/GetAllSOIsServlet" width="100%" height="100%"></object>';
    }

    function load_add() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="AddCashIn.jsp" width="100%" height="100%"></object>';
    }

    function load_query() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="QueryCashIn.jsp" width="100%" height="100%"></object>';
    }

    function load_user_query() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/UserGetUserByIdServlet3?id=${name}" width="100%" height="100%"></object>';
    }

    function load_user_passwd() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/UserGetUserByIdServlet?id=${name}" width="100%" height="100%"></object>';
    }

    function edit_user_info() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/UserGetUserByIdServlet2?id=${name}" width="100%" height="100%"></object>';
    }

    function query_user_management() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/AdminGetAllUsersServlet" width="100%" height="100%"></object>';
    }

    function load() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/admin_welcome.jsp" width="100%" height="100%"></object>';
    }

    function query_cashout_info() {
        document.getElementById("viewDiv").innerHTML = '<object type="text/html" data="${pageContext.request.contextPath}/query_cashout.jsp" width="100%" height="100%"></object>';
    }

</script>
<style>
    .innerView {
        height: 100%;
    }

    html, body {
        overflow: auto;
        height: 100%;
    }
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="#" onclick="load()">家庭财务管理系统</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    证券流水账管理
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#" onclick="load_stock_account()">证券账户信息</a>
                    <a class="dropdown-item" href="#" onclick="load_journal()">证券流水账信息表</a>
                    <a class="dropdown-item" href="#" onclick="load_keep_stock()">持股管理信息</a>
                </div>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink2" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    收入管理
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#" onclick="load_query()">收入记录</a>
                    <%-- <a class="dropdown-item" href="#" onclick="load_add()">增加收入记录</a> --%>
                </div>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink3" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    支出管理
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#" onclick="query_cashout_info()">支出记录</a>
                    <%-- <a class="dropdown-item" href="#" onclick="load_add()">增加收入记录</a> --%>
                </div>
            </li>
        </ul>

    </div>
    <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuUser" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    管理员&nbsp;<%
                    out.println(name);
                %>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#" onclick="load_user_query()">当前用户信息</a>
                    <%-- <a class="dropdown-item" href="#" onclick="load_add()">增加收入记录</a> --%>
                    <a class="dropdown-item" href="#" onclick="load_user_passwd()">修改密码</a>
                    <a class="dropdown-item" href="#" onclick="edit_user_info()">修改用户信息</a>
                    <a class="dropdown-item" href="#" onclick="query_user_management()">管理用户信息</a>
                </div>
            </li>
        </ul>
        <a class="btn btn-outline-danger my-2 my-sm-0" href="invalidate.jsp">退出登录</a>
    </form>
</nav>
<div id="viewDiv" class="innerView">
    <object type="text/html" data="${pageContext.request.contextPath}/admin_welcome.jsp"
            style="width:100%;height:100%"></object>
</div>
</body>
</html>