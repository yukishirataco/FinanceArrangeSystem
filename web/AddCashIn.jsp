<%--
  Created by IntelliJ IDEA.
  User: npfjc
  Date: 2019/7/8
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>添加收入记录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <%-- 引入Bootstrap --%>
    <script src="js/jquery.min.js"></script>
    <%-- 引入JQuery --%>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/messages_zh.min.js"></script>
    <%-- 引入JQuery validate插件以及其本地化工具，这里使用了菜鸟教程的CDN，将来应该把这两个JS直接丢到web根目录底下。--%>
    <%-- 上面两个前端框架在现在是没有必要用的，先把前端的表单写好先 --%>
</head>
<style>
    html,
    body {
        height: 100%;
        color: white;
        background-color: #494a5f;
    }

    body {
        /*display: flex;
          -ms-flex-align: center;*/
        align-items: center;
        padding-top: 15px;
        padding-bottom: 15px;
        margin-right: 240px;
        margin-left: 240px;
    }

    .add-cashin {
        width: 100%;
        padding: 15px;
        align-items: center;
    }

    button {
        align-items: center;
    }
</style>
<script>
    $().ready(function () {
        $("#add-cashin").validate({
            rules: {
                "cashin-money": {
                    required: true,
                    number: true,
                    min: 0,
                    max: 2147483646
                },
                "cashin-type": {
                    required: true
                },
                "cashin-person": {
                    required: true
                },
                "cashin-date": {
                    required: true,
                    number: true
                },
                "cashin-source": {
                    required: true
                }
            }
        });
    });

    function clearForm() {
        document.getElementById('cashintype').value = '';
        document.getElementById('cashinmoney').value = '';
        document.getElementById('cashinperson').value = '';
        document.getElementById('cashindate').value = '';
        document.getElementById('cashinnote').value = '';
        document.getElementById('cashinsource').value = '';
    }

    function getContextPath() {
        var pathName = document.location.pathname;
        var index = pathName.substr(1).indexOf("/");
        var result = pathName.substr(0, index + 1);
        return result;
    }

    var contextPath = getContextPath();

    //alert(contextPath);
    function returnToHomepage() {
        location.href = contextPath + "/QueryCashIn.jsp";
    }
</script>

<body text="white">
<div id="input-cashinform" class="justify-content-center">
    <form id="add-cashin" class="add-cashin" method="POST" action="AddCashInServlet">
        <label for="cashinmoney">收入金额：</label>
        <input type="text" class="form-control" id="cashinmoney" name="cashin-money"><br>
        <label for="cashintype">收入类型：</label>
        <select id="cashintype" class="form-control" name="cashin-type">
            <option value="">请选择收入类型</option>
            <option value="工资">工资</option>
            <option value="股票">股票</option>
            <option value="分红">分红</option>
            <option value="奖金">奖金</option>
        </select><br>
        <label for="cashinperson">收入者：</label>
        <input type="text" class="form-control" id="cashinperson" name="cashin-person"><br>
        <label for="cashindate">收入日期(格式如 20190705)：</label>
        <input type="text" class="form-control" id="cashindate" name="cashin-date"><br>
        <label for="cashinsource">收入来源：</label>
        <input type="text" class="form-control" id="cashinsource" name="cashin-source"><br>
        <label for="cashinnote">相关备注：</label>
        <textarea class="form-control" id="cashinnote" name="cashin-note" rows=3></textarea><br>
        <div class="d-flex justify-content-between">
            <button class="btn btn-lg btn-primary" type="button" onclick="returnToHomepage()">返回</button>
            <button class="btn btn-lg btn-primary" type="submit">提交</button>
            <button class="btn btn-lg btn-primary" type="reset">清空</button>
        </div>
    </form>
</div>
</body>

</html>