<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加信息</title>
    <script src="${pageContext.request.contextPath }/js/constraint.js"></script>
</head>
<body text="white">
<style>
    body {
        color: white;
        background-color: #494a5f;
    }
</style>
<center>
    <form action="${pageContext.request.contextPath }/InsertSSIServlet" method="post">
        <center><h1>添加信息</h1></center>
        <table>
            <tr>
                <td>账号:</td>
                <td><input class="form-control" type="text" name="sharestream_id" id="ssiid" onblur="ma()"/></td>
                <td><span id="d1"> </span></td>
            </tr>
            <tr>
                <td>代码:</td>
                <td><input class="form-control" type="text" name="sharestream_no" placeholder="请输入六位购股代码"
                           onblur="ma2()"></td>
                <td><span id="d2"> </span></td>
            </tr>
            <tr>
                <td>股票名称:</td>
                <td><input class="form-control" type="text" name="sharestream_name" onblur="ma3()"></td>
                <td><span id="d3"> </span></td>
            </tr>
            <tr>
                <td>买入:</td>
                <td><input class="form-control" type="text" name="sharestream_in"></td>
            </tr>
            <tr>
                <td>卖出:</td>
                <td><input class="form-control" type="text" name="sharestream_out"></td>
            </tr>
            <tr>
                <td>日期:</td>
                <td><input class="form-control" type="text" name="sharestream_date"></td>
            </tr>
            <tr></tr>
            <tr>
                <td colspan="3" align="center"><input class="btn btn-primary" type="submit" value="添加信息"
                                                      onclick="return ma4();"/></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>