<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>注册用户</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/constraint.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<center>
    <h1>注册新用户</h1>
    <%
        Object info = request.getAttribute("message");
        if (info != null)
            out.println(info);
    %>
    <form action="${pageContext.request.contextPath }/UserRegisterServlet" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input class="form-control" type="text" name="id" onblur="ma()"/><span id="d1"></span></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input class="form-control" type="password" name="password"/></td>
            </tr>
            <tr>
                <td>银行账号：</td>
                <td><input class="form-control" type="text" name="card"/></td>
            </tr>
            <tr>
                <td>工资：</td>
                <td><input class="form-control" type="text" name="wage"/></td>
            </tr>
            <tr>
                <td>家庭称呼：</td>
                <td><input class="form-control" type="text" name="call"/></td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input class="form-control" type="text" name="age"/></td>
            </tr>
        </table>
        <p>
            <input class="btn btn-primary" type="submit" value="注册">
        <p/>
    </form>
</center>
</body>
</html>
