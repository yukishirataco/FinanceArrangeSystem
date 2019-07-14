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
<script>
    function checkdate() {
        var datein = document.getElementById("searchdateid");
        if (datein == null || datein == '') {
            document.getElementById("showDateDialog").innerHTML = "<center><font color=\"red\">请输入有效的日期！</font></center>"
        } else {
            document.getElementById('search-date').submit();
        }
    }
</script>
<center>
    <h2>
        按照日期进行查询
    </h2>
</center>
<center>
    <form action="SearchCashByDate" method="get" id="search-date">
        <table>
            <tr>
                <td>
                    <font color="white">
                        请输入要查询的收入支出记录日期&nbsp;&nbsp;
                    </font>
                </td>
                <td>
                    <input type="text" class="form-control" id="searchdateid" name="searchdate"
                           placeholder="日期，格式如 20180624" required>
                </td>
            </tr>
        </table>
        <div id="showDateDialog"></div>
        <br>
        <button type="submit" class="btn btn-primary">查找</button>
    </form>
    <div id="form-cashin-type">
        <h2>
            按照收入类型进行查询
        </h2>
        <form method="get" action="GetCashInByType">
            <select id="itype" name="type" required>
                <option value="工资">工资</option>
                <option value="股票">股票</option>
                <option value="分红">分红</option>
                <option value="奖金">奖金</option>
            </select>
            <br><br>
            <button type="submit" class="btn btn-primary">查找</button>
        </form>
    </div>
    <div id="form-cashout-type">
        <h2>
            按照支出类型进行查询
        </h2>
        <form method="get" action="GetCashOutByType">
            <select id="otype" name="type" required>
                <option value="税收">工资</option>
                <option value="衣食住行">股票</option>
                <option value="医疗">分红</option>
                <option value="其他 ">奖金</option>
            </select>
            <br><br>
            <button type="submit" class="btn btn-primary">查找</button>
        </form>
    </div>
</center>

</body>
</html>
