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
<body>
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
        <td>${shareaccount.shareaccount_id }</td>
        <td>${shareaccount.shareaccount_pwd }</td>
        <td>${shareaccount.shareaccount_num }</td>
        <td>${shareaccount.shareaccount_card }</td>
        <td>${shareaccount.shareaccount_company }</td>
    </tr>
</table>
</body>
</html>