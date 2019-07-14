<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>支出信息管理</title>
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
    //contextPath
    function getContextPath() {
        var pathName = document.location.pathname;
        var index = pathName.substr(1).indexOf("/");
        var result = pathName.substr(0, index + 1);
        return result;
    }

    var contextPath = getContextPath();

    //alert(contextPath);
    function confirmance(id) {
        var con = confirm("你确定要删除这一项吗？");
        if (con) {
            window.location.href = contextPath + '/DeleteCashOutData?data_id=' + id;
            //location.reload();
        } else {
            location.reload();
        }
    }
</script>
<br>
<div class="d-flex justify-content-between">
    <button type="button" class="btn btn-primary glyphicon glyphicon-refresh" onclick="location.reload()">刷新</button>
    <button type="button" class="btn btn-primary glyphicon glyphicon-plus"
            onclick="location.replace(contextPath+'/AddCashOut.jsp')">新增
    </button>
</div>
<br>
<table class="table table-hover" border="1">
    <thead class="thead-dark">
    <tr>
        <th>支出编号</th>
        <th>支出金额</th>
        <th>支出类型</th>
        <th>支出者</th>
        <th>支出日期</th>
        <th>支出用途</th>
        <th>相关备注</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
        <%
    try{
        com.yukishira.cashin.queueSQLDatabase test = new com.yukishira.cashin.queueSQLDatabase("familyfinancesystem","root","");
        Connection conn = test.connect();
        PreparedStatement pstmt;
        String sql = "SELECT * FROM cashoutdb";
        pstmt = conn.prepareStatement(sql);
        ResultSet rs =pstmt.executeQuery();
        while(rs.next()){
            out.print("<tr>");
            out.print("<td><font color=\"white\">"+rs.getInt("cashout_id")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getInt("cashout_cash")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_type")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_person")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_date")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_source")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_note")+"</font></font></td>");
            out.print("<td>"+"<a role=\"button\" href=\""+request.getContextPath()+"/EditCashOutData.jsp?data_id="+
                    rs.getInt("cashout_id")+
                    "\" class=\"glyphicon glyphicon-pencil btn btn-primary\">编辑</a>&nbsp;" +
                    //"<a href=\"com.yukishira.cashout.DeletecashoutData?data_id="+
                    // rs.getInt("cashout_id")+
                    "<button type=\"button\" href=# onclick=\"confirmance("+
                    rs.getInt("cashout_id")+
                    ")\" class=\"glyphicon glyphicon-remove btn btn-danger\">删除</a>");
            out.print("</tr>");
        }
        out.print("</table>\n</tbody>");
    }catch(SQLException e){
        e.printStackTrace();
    }
%>
</table>
</tbody>

</body>