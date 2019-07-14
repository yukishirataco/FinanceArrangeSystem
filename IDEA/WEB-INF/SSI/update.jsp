<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改信息</title>
    <link href="/middle.css" rel="stylesheet" type="text/css"/>
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
<center>
    <form action="${pageContext.request.contextPath }/UpdateSSIServlet" method="post">
        <h1 class="center">修改信息</h1>
        <table>
            <tr>
                <td>账号:</td>
                <td><input class="form-control" type="text" name="sharestream_id"
                           value="${ sharestreaminfo.sharestream_id }"></td>
            </tr>
            <tr>
                <td>代码:</td>
                <td><input class="form-control" type="text" name="sharestream_no"
                           value="${ sharestreaminfo.sharestream_no }"></td>
            </tr>
            <tr>
                <td>股票名称:</td>
                <td><input class="form-control" type="text" name="sharestream_name"
                           value="${ sharestreaminfo.sharestream_name }"></td>
            </tr>
            <tr>
                <td>买入:</td>
                <td><input class="form-control" type="text" name="sharestream_in"
                           value="${ sharestreaminfo.sharestream_in }"></td>
            </tr>
            <tr>
                <td>卖出:</td>
                <td><input class="form-control" type="text" name="sharestream_out"
                           value="${ sharestreaminfo.sharestream_out }"></td>
            </tr>
            <tr>
                <td>日期:</td>
                <td><input class="form-control" type="text" name="sharestream_date"
                           value="${ sharestreaminfo.sharestream_date }"></td>
            </tr>
            <tr></tr>
            <tr>
                <td colspan="3" align="center"><input class="btn btn-primary" type="submit" value="修改信息"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>