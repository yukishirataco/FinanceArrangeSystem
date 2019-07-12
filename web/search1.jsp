<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>查找账号</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/GetSOIbySOI_idServlet" method="post">
    账号:<input class="form-control" type="text" name="shareowned_id"><br/>

    <input class="btn btn-primary" type="submit" value="查找">

</form>
</body>
</html>