<%--
  Created by IntelliJ IDEA.
  User: npfjc
  Date: 2019/7/10
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑收入记录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <%-- 引入Bootstrap --%>
    <script src="js/jquery.min.js"></script>
    <%-- 引入JQuery --%>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/messages_zh.min.js"></script>
    <script src="js/jquery.metadata.min.js"></script>
    <%-- 引入JQuery validate插件以及其本地化工具，这里使用了菜鸟教程的CDN，将来应该把这两个JS直接丢到web根目录底下。--%>
    <%-- 上面两个前端框架在现在是没有必要用的，先把前端的表单写好先 --%>
</head>
<style>
    html,
    body {
        height: 100%;
        background-color: #dce2de;
    }

    body {
        /*display: flex;
          -ms-flex-align: center;*/
        align-items: center;
        padding-top: 15px;
        padding-bottom: 15px;
        background-color: #f5f5f5;
        margin-right: 240px;
        margin-left: 240px;
        overflow-y: auto;
    }

    .edit-cashin {
        width: 100%;
        padding: 15px;
        align-items: center;
    }

    button {
        align-items: center;
    }
</style>
<script>
    function getQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return null;
    }

    var from = getQueryString("data_id");

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

    function showJson() {
        var test;
        if (window.XMLHttpRequest) {
            test = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            test = new window.ActiveXObject();
        } else {
            alert("请升级至最新版本的浏览器");
        }
        if (test != null) {
            test.open("GET", contextPath + "/QueryCashInAPI?id=" + from, true);
            test.send(null);
            test.onreadystatechange = function () {
                if (test.readyState === 4 && test.status === 200) {
                    var obj = JSON.parse(test.responseText);
                }
                var cashinid = document.getElementById("cashinid");
                cashinid.value = obj["cashin_id"];
                var cashmoney = document.getElementById("cashinmoney");
                cashmoney.value = obj['cashin_cost'];
                var cashintype = document.getElementById("cashintype");
                cashintype.value = obj["cashin_type"];
                var cashindate = document.getElementById("cashindate");
                cashindate.value = obj['cashin_date'];
                var cashinperson = document.getElementById("cashinperson");
                cashinperson.value = obj['cashin_person'];
                var cashinsource = document.getElementById("cashinsource");
                cashinsource.value = obj['cashin_source'];
                var cashinnote = document.getElementById("cashinnote");
                cashinnote.value = obj['cashin_note'];
            };

        }
    }

    window.onload = function () {
        showJson();
    };
    $().ready(function () {
        $("#edit-cashin").validate({
            rules: {
                "cashin-money": {
                    required: true,
                    number: true,
                    min: 0,
                    max: 2147483647
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
</script>
<body>
<div id="input-cashinform" class="justify-content-center">
    <form id="edit-cashin" class="edit-cashin" method="POST" action="EditCashInServlet">
        <label for="cashinid">收入编号：</label>
        <input type="text" class="form-control" name="cashin-id" id="cashinid" readonly><br>
        <label for="cashinmoney">收入金额：</label>
        <input type="text" class="form-control {number:true}" id="cashinmoney" name="cashin-money"><br>
        <label for="cashintype">收入类型：</label>
        <div class="form-group">
            <select id="cashintype" class="form-control" name="cashin-type">
                <option value="">请选择收入类型</option>
                <option value="工资">工资</option>
                <option value="股票">股票</option>
                <option value="分红">分红</option>
                <option value="奖金">奖金</option>
            </select>
        </div>
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
        <br>
        <p>&nbsp;</p><br>
    </form>

</div>
</body>
</html>
