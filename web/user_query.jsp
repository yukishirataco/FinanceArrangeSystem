<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户信息查询结果</title>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <meta charset="UTF-8">

</head>
<body>
<center><h1>查询信息结果</h1></center>
<table border="1" cellspacing="0" width="80%" align="center" class="table table-hover">
    <thead class="thead-dark">
    <tr>
        <th>账号</th>
        <th>银行账号</th>
        <th>工资</th>
        <th>家庭称呼</th>
        <th>年龄</th>
    </tr>
    </thead>
    <c:if test="${user==null }">
        <tr>
            <td colspan="6"><font color="red">没有符合条件的数据</font></td>
        </tr>
    </c:if>
    <c:if test="${user!=null }">
        <tr>
            <td>${user.id }</td>
            <td>${user.card }</td>
            <td>${user.wage }</td>
            <td>${user.call }</td>
            <td>${user.age }</td>
        </tr>
    </c:if>
    <tr>
        <td colspan="6">
            <center><input class="btn btn-primary" type="button" value="返回"
                           onclick="location.href='${pageContext.request.contextPath}/user_welcome.jsp'"></center>
        </td>
    </tr>
</table>
</body>
</html>