<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查找账号</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/GetSOIbySOI_idServlet" method="post">
账号:<input type="text" name="shareowned_id"><br/>

<input type="submit" value="查找">

</form>
</body>
</html>