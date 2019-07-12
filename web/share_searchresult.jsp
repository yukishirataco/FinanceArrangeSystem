<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<h1>信息查询结果</h1>
<br><br>
<table border="1" cellspacing="0" width="80%" align="center" class="table table-hover">
    <thead class="thead-dark">
    <tr>
        <th>账号</th>
        <th>密码</th>
        <th>手机号</th>
        <th>银行卡</th>
        <th>开户公司
    </tr>
    </thead>
    <tr>
        <td><font color="white">${shareaccount.shareaccount_id }</font></td>
        <td><font color="white">${shareaccount.shareaccount_pwd }</font></td>
        <td><font color="white">${shareaccount.shareaccount_num }</font></td>
        <td><font color="white">${shareaccount.shareaccount_card }</font></td>
        <td><font color="white">${shareaccount.shareaccount_company }</font></td>
    </tr>
</table>
</body>
</html>