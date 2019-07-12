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
    <title>添加支出记录</title>
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

    .add-cashout {
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
        $("#add-cashout").validate({
            rules: {
                "cashout-money": {
                    required: true,
                    number: true,
                    min: 0,
                    max: 2147483646
                },
                "cashout-type": {
                    required: true
                },
                "cashout-person": {
                    required: true
                },
                "cashout-date": {
                    required: true,
                    number: true
                },
                "cashout-source": {
                    required: true
                }
            }
        });
    });

    function clearForm() {
        document.getElementById('cashouttype').value = '';
        document.getElementById('cashoutmoney').value = '';
        document.getElementById('cashoutperson').value = '';
        document.getElementById('cashoutdate').value = '';
        document.getElementById('cashoutnote').value = '';
        document.getElementById('cashoutsource').value = '';
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
        location.href = contextPath + "/query_cashout.jsp";
    }
</script>

<body text="white">
<div id="input-cashoutform" class="justify-content-center">
    <form id="add-cashout" class="add-cashout" method="POST" action="AddCashOutServlet">
        <label for="cashoutmoney">支出金额：</label>
        <input type="text" class="form-control" id="cashoutmoney" name="cashout-money"><br>
        <label for="cashouttype">支出类型：</label>
        <select id="cashouttype" class="form-control" name="cashout-type">
            <option value="">请选择支出类型</option>
            <option value="税收">税收</option>
            <option value="衣食住行">股票</option>
            <option value="医疗">医疗</option>
            <option value="其他">其他</option>
        </select><br>
        <label for="cashoutperson">支出者：</label>
        <input type="text" class="form-control" id="cashoutperson" name="cashout-person"><br>
        <label for="cashoutdate">支出日期(格式如 20190705)：</label>
        <input type="text" class="form-control" id="cashoutdate" name="cashout-date"><br>
        <label for="cashoutsource">支出用途：</label>
        <input type="text" class="form-control" id="cashoutsource" name="cashout-source"><br>
        <label for="cashoutnote">相关备注：</label>
        <textarea class="form-control" id="cashoutnote" name="cashout-note" rows=3></textarea><br>
        <div class="d-flex justify-content-between">
            <button class="btn btn-lg btn-primary" type="button" onclick="returnToHomepage()">返回</button>
            <button class="btn btn-lg btn-primary" type="submit">提交</button>
            <button class="btn btn-lg btn-primary" type="reset">清空</button>
        </div>
    </form>
</div>
</body>

</html>