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
    <title></title>
</head>
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<table border="1" cellspacing="0" width="80%" align="center" class="table table-hover">
    <caption>信息查询结果</caption>
    <thead class="thead-dark">
    <tr>
        <th>账号</th>
        <th>代码</th>
        <th>股票名称</th>
        <th>成本价</th>
        <th>开盘价</th>
        <th>持仓数</th>
    </tr>
    </thead>
    <c:if test="${shareownedinfos==null }">
        <tr>
            <td colspan="7"><font color="red">没有符合条件的数据</font></td>
        </tr>
    </c:if>
    <c:if test="${shareownedinfos!=null }">
        <c:forEach items="${shareownedinfos }" var="item">
            <tr>
                <td><font color="white">${item.shareowned_id }</font></td>
                <td><font color="white">${item.shareowned_no }</font></td>
                <td><font color="white">${item.shareowned_name }</font></td>
                <td><font color="white">${item.shareowned_begin }</font></td>
                <td><font color="white">${item.shareowned_end }</font></td>
                <td><font color="white">${item.shareowned_amount }</font></td>
            </tr>
        </c:forEach>
    </c:if>
</table>
</body>
</html>