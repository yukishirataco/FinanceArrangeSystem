<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>添加账户</title>
    <script>
        function ma() {
            //方式一
            var user = document.forms[0].shareaccount_id.value;
            var d1 = document.getElementById("d1");
            if (user == "" || user == null) {
                //alert("账号不能为空");
                d1.innerHTML = "<font color=red>用户名不能为空</font>";
            } else {
                d1.innerHTML = "";
            }
        }

        function mb() {
            //方式一
            var user = document.forms[0].shareaccount_num.value;
            var d1 = document.getElementById("d3");
            if (user.length != 11) {
                //alert("代码必须六位");
                d1.innerHTML = "<font color=red>手机号输入错误</font>";
            } else {
                d1.innerHTML = "";
            }
        }

        function clicked() {
            //方式一
            var user1 = document.forms[0].shareowned_id.value;
            var user2 = document.forms[0].shareowned_no;
            var user3 = document.forms[0].shareowned_name;
            var user4 = document.forms[0].shareowned_begin;
            var user5 = document.forms[0].shareowned_end;
            var user6 = document.forms[0].shareowned_amount;
            if (user1 == "" || user1 == null || user2 == "" || user2 == null || user3 == "" || user3 == null || user4 == "" || user4 == null || user5 == "" || user5 == null || user6 == "" || user6 == null) {


                alert("请输入完整信息");
                return false;
                //d1.innerHTML="<font color=red>用户名不能为空</font>";
            } else {
                return true;
                //d1.innerHTML="";
            }
        }

        function clicked() {
            //方式一
            var user1 = document.forms[0].shareaccount_id.value;
            var user2 = document.forms[0].shareaccount_pwd.value;
            var user3 = document.forms[0].shareaccount_num.value;
            var user4 = document.forms[0].shareaccount_card.value;
            var user5 = document.forms[0].shareaccount_company.value;
            if (user1 == "" || user1 == null || user2 == "" || user2 == null || user3 == "" || user3 == null || user4 == "" || user4 == null || user5 == "" || user5 == null) {


                alert("请输入完整信息");
                return false;
                //d1.innerHTML="<font color=red>用户名不能为空</font>";
            } else {
                return true;
                //d1.innerHTML="";
            }
        }
    </script>
</head>
<body>
<center><h1>添加账户</h1></center>
<form action="${pageContext.request.contextPath }/InsertShareServlet" method="post">
    <table align="center">
        <tr>
            <td>账号:</td>
            <td><input class="form-control" type="text" name="shareaccount_id" id="u" onblur="ma()"/><span
                    id="d1"></span></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input class="form-control" type="text" name="shareaccount_pwd" id="u"/><span id="d2"></span></td>
        </tr>
        <tr>
            <td>手机号：</td>
            <td><input class="form-control" class="form-control" type="text" name="shareaccount_num" id="u"
                       onblur="mb()"/><span id="d3"></span></td>
        </tr>
        <tr>
            <td>银行卡：</td>
            <td><input class="form-control" type="text" name="shareaccount_card" id="u"/><span id="d4"></span></td>
        </tr>
        <tr>
            <td>开户公司：</td>
            <td><input class="form-control" type="text" name="shareaccount_company" id="u"/><span id="d5"></span></td>
        </tr>
        <tr></tr>
        <tr>
            <td colspan="3" align="center"><input class="btn btn-primary" type="submit" value="添加信息"
                                                  onclick="return clicked();"></td>
        </tr>
    </table>
</form>
</body>
</html>