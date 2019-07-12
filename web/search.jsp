<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
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
                <td>${item.shareowned_id }</td>
                <td>${item.shareowned_no }</td>
                <td>${item.shareowned_name }</td>
                <td>${item.shareowned_begin }</td>
                <td>${item.shareowned_end }</td>
                <td>${item.shareowned_amount }</td>
            </tr>
        </c:forEach>
    </c:if>
</table>
</body>
</html>