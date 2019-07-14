<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改用户密码</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/constraint.js"></script>
</head>
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<center>
    <form action="${pageContext.request.contextPath }/UserUpdateInfoServlet" method="post">
        <h1>修改用户密码</h1>
        <table>
            <tr>
                <td>用户名：</td>
                <td><input class="form-control" type="text" name="id" value="${sessionScope.id }"></td>
            </tr>
            <tr>
                <td>用户密码：</td>
                <td><input class="form-control" type="password" name="password" value="${user.password }"></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input class="form-control" type="password" name="repassword" value="${user.password }"></td>
            </tr>
            <tr></tr>
            <tr>
                <td colspan="2"><input class="btn btn-primary" type="submit"
                                       value="                修改密码                          " onclick="return mo();">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>