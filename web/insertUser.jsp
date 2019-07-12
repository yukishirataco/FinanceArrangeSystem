<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body text="white">
<style>
    body {
        color: white;
        background-color: #494a5f;
    }
</style>
<form action="${pageContext.request.contextPath }/AdminInsertUserServlet" method="post">
    用户ID:<input class="form-control" type="text" name="id"><br/>
    用户密码：<input class="form-control" type="password" name="password"><br/>
    用户银行账号:<input class="form-control" type="text" name="card"><br/>
    用户工资：<input class="form-control" type="text" name="wage"><br/>
    用户家庭称呼:<input class="form-control" type="text" name="call"><br/>
    用户年龄：<input class="form-control" type="text" name="age"><br/>
    <input class="btn btn-primary" type="submit" value="添加用户">
</form>
</body>
</html>