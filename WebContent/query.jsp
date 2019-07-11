<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<center><title>查询信息</title></center>
</head>
<body>
<center>
<h1>查询信息</h1>
<form action="${pageContext.request.contextPath }/GetSSIbySSI_idServlet" method="post">
账号:<input type="text" name="sharestream_id"><br/><br/>
<input type="submit" value="查询该账号信息"><br/>
</form>
</center>
</body>
</html>