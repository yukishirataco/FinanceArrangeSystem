<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/UpdateSOIServlet" method="post">
    <center><h1>修改信息</h1>
        账号:<input type="text" class="form-control" name="shareowned_id" value="${ shareownedinfo.shareowned_id }"><br/>
        代码:<input type="text" class="form-control" name="shareowned_no" value="${ shareownedinfo.shareowned_no }"><br/>
        股票名称:<input type="text" class="form-control" name="shareowned_name" value="${ shareownedinfo.shareowned_name }"><br/>
        成本价:<input type="text" class="form-control" name="shareowned_begin"
                   value="${ shareownedinfo.shareowned_begin }"><br/>
        开盘价:<input type="text" class="form-control" name="shareowned_end"
                   value="${ shareownedinfo.shareowned_end }"><br/>
        持仓数:<input type="text" class="form-control" name="shareowned_amount"
                   value="${ shareownedinfo.shareowned_amount }"><br/>
        <input class="btn btn-primary" type="submit" value="修改信息">
    </center>
</form>
</body>
</html>