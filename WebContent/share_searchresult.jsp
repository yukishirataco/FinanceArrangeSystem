<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellspacing="0" width="80%"  align="center">
<caption>信息查询结果</caption><br/><br/>
<tr><th>账号</th><th>密码</th><th>手机号</th><th>银行卡</th><th>开户公司</tr>
<tr><td>${shareaccount.shareaccount_id }</td>
<td>${shareaccount.shareaccount_pwd }</td>
<td>${shareaccount.shareaccount_num }</td>
<td>${shareaccount.shareaccount_card }</td>
<td>${shareaccount.shareaccount_company }</td>
<td>
</td>
</tr>
</table>
</body>
</html>