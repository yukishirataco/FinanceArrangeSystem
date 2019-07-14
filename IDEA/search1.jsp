<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>查找账号</title>
</head>
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<form action="${pageContext.request.contextPath }/GetSOIbySOI_idServlet" method="post">
    账号:<input class="form-control" type="text" name="shareowned_id"><br/>

    <input class="btn btn-primary" type="submit" value="查找">

</form>
</body>
</html>