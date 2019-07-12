<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>查询账户</title>
</head>
<body>
<style>
    body {
        background-color: #dce2de;
    }
</style>
<form action="${pageContext.request.contextPath }/GetSharebyIdServlet2" method="post">
    <center><label for="shareaccount_id">查询账户</label></center>
    <center>账号:<input class="form-control" type="text" id="shareaccount_id" name="shareaccount_id"><br/><br/>
        <input type="submit" class="btn btn-primary" value="查找"></center>
</form>
</body>
</html>