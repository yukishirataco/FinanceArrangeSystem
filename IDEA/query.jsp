<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>查询信息</title>
</head>
<body text="white">
<center>
    <h1>查询信息</h1>
    <form action="${pageContext.request.contextPath }/GetSSIbySSI_idServlet" method="post">
        账号:<input class="form-control" type="text" name="sharestream_id"><br/><br/>
        <input class="btn btn-primary" type="submit" value="查询该账号信息"><br/>
    </form>
</center>
</body>
</html>