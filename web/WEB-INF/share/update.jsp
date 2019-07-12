<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改信息</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/del.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<center><h1>修改信息</h1></center>
<form action="${pageContext.request.contextPath }/UpdateShareServlet" method="post">
    <table align="center" class="justify-content-center">
        <tr>
            <td>账号:</td>
            <td><input class="form-control" type="text" name="shareaccount_id" value="${shareaccount.shareaccount_id }">
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input class="form-control" type="text" name="shareaccount_pwd"
                       value="${shareaccount.shareaccount_pwd }"></td>
        </tr>
        <tr>
            <td>手机号：</td>
            <td><input class="form-control" type="text" name="shareaccount_num"
                       value="${shareaccount.shareaccount_num }"></td>
        </tr>
        <tr>
            <td>银行卡：</td>
            <td><input class="form-control" type="text" name="shareaccount_card"
                       value="${shareaccount.shareaccount_card}"></td>
        </tr>
        <tr>
            <td>开户公司：</td>
            <td><input class="form-control" type="text" name="shareaccount_company"
                       value="${shareaccount.shareaccount_company }"></td>
        </tr>
        <tr></tr>
        <tr>
            <td colspan="3" align="center"><input class="btn btn-primary" type="submit" value="修改信息"></td>
        </tr>
    </table>
</form>
</body>
</html>