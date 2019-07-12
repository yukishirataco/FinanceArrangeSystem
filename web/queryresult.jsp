<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>查询结果</title>
</head>
<body>
<style>
    body {
        background-color: #dce2de;
    }
</style>
<center><h1>查询结果</h1></center>
<table border="1" cellspacing="0" width="80%" align="center" class="table table-hover">
    <thead class="thead-dark">
    <tr>
        <th>账号</th>
        <th>代码</th>
        <th>股票名称</th>
        <th>买入</th>
        <th>卖出</th>
        <th>日期</th>
    </tr>
    </thead>
    <c:if test="${SSIids==null }">
        <tr>
            <td colspan="7"><font color="red">没有符合条件的数据</font></td>
        </tr>
    </c:if>
    <c:if test="${SSIids!=null }">
        <c:forEach items="${SSIids }" var="item">
            <tr>
                <td>${item.sharestream_id }</td>
                <td>${item.sharestream_no }</td>
                <td>${item.sharestream_name }</td>
                <td>${item.sharestream_in }</td>
                <td>${item.sharestream_out }</td>
                <td>${item.sharestream_date }</td>
            </tr>
        </c:forEach>
    </c:if>

</table>
</body>
</html>