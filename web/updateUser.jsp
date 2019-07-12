<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<center>
    <style>
        body {
            background-color: #dce2de;
        }
    </style>
    <form action="${pageContext.request.contextPath }/AdminUpdateUserServlet" method="post">
        <h1>修改用户信息</h1>
        用户账号:<input class="form-control" type="text" name="id" value="${user.id }"><br/>
        用户密码：<input class="form-control" type="text" name="password" value="${user.password }"><br/>
        用户银行账号:<input class="form-control" type="text" name="card" value="${user.card }"><br/>
        用户工资：<input class="form-control" type="text" name="wage" value="${user.wage }"><br/>
        用户家庭称呼:<input class="form-control" type="text" name="call" value="${user.call }"><br/>
        用户年龄：<input class="form-control" type="text" name="age" value="${user.age}"><br/>
        <input class="btn btn-primary" type="submit" value="修改用户信息">

    </form>
</center>
</body>
</html>