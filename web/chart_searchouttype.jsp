<%--
  Created by IntelliJ IDEA.
  User: npfjc
  Date: 2019/7/13
  Time: 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据查询</title>
</head>
<body text="white">
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<link href="css/glyphfonts.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<center>
    <div id="form-cashin-type">
        <h2>
            按照支出类型进行查询
        </h2>
        <form method="get" action="GetCashOutByType">
            <select id="otype" name="type" required>
                <option value="税收">税收</option>
                <option value="衣食住行">衣食住行</option>
                <option value="医疗">医疗</option>
                <option value="其他">其他</option>
            </select>
            <br><br>
            <button type="submit" class="btn btn-primary">查找</button>
        </form>
    </div>

</center>
</body>
</html>