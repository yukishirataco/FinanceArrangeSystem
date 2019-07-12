<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改用户信息</title>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/constraint.js"></script>
</head>
<body>
<center>
    <form action="${pageContext.request.contextPath }/UserUpdateInfoServlet2" method="post">
        <h1>修改用户信息</h1>
        <table>
            <tr>
                <td>用户名：</td>
                <td><input class="form-control" type="text" name="id" value="${sessionScope.id }"></td>
            </tr>

            <tr>
                <td>银行账号：</td>
                <td><input class="form-control" type="text" name="card" value="${user.card }"></td>
            </tr>
            <tr>
                <td>工资：</td>
                <td><input class="form-control" type="text" name="wage" value="${user.wage }"></td>
            </tr>
            <tr>
                <td>家庭称呼：</td>
                <td><input class="form-control" type="text" name="call" value="${user.call }"></td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input class="form-control" type="text" name="age" value="${user.age }"></td>
            </tr>
            <tr></tr>
            <tr>
                <td colspan="2"><input class="btn btn-primary" type="submit"
                                       value="                修改信息                          "></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>