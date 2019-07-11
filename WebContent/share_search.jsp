<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询账户</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/GetSharebyIdServlet2" method="post">
<center><h1>查询账户</h1></center><br/>
<center>账号:<input type="text" name="shareaccount_id"><br/><br/>
<input type="submit" value="查找"></center>
</form>
</body>
</html>