<%--
  Created by IntelliJ IDEA.
  User: npfjc
  Date: 2019/7/10
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<!-- mysql-connector-java -->
<!-- http://mvnrepository.com/artifact/mysql/mysql-connector-java -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
    <title>查询收入信息</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/glyphfonts.css" rel="stylesheet">
<%-- 引入Bootstrap --%>
<script src="js/jquery.min.js"></script>
<%-- 引入JQuery --%>
<script>
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
            window.location.href = contextPath + '/DeleteCashInData?data_id=' + id;
            //location.reload();
        } else {
            location.reload();
        }
    }

</script>
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<br>
<div class="d-flex justify-content-between">
    <button type="button" class="btn btn-primary glyphicon glyphicon-refresh" onclick="location.reload()">刷新</button>
    <button type="button" class="btn btn-primary glyphicon glyphicon-plus"
            onclick="location.replace(contextPath+'/AddCashIn.jsp')">新增
    </button>
</div>
<br>
<table class="table table-hover" border="1">
    <thead class="thead-dark">
    <tr>
        <th>收入编号</th>
        <th>收入金额</th>
        <th>收入类型</th>
        <th>收入者</th>
        <th>收入日期</th>
        <th>收入来源</th>
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
        String sql = "SELECT * FROM homedb";
        pstmt = conn.prepareStatement(sql);
        ResultSet rs =pstmt.executeQuery();
        while(rs.next()){
            out.print("<tr>");
            out.print("<td><font color=\"white\">"+rs.getInt("cashin_id")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getInt("cashin_cash")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_type")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_person")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_date")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_source")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_note")+"</td>");
            out.print("<td>"+"<a role=\"button\" href=\""+request.getContextPath()+"/EditCashInData.jsp?data_id="+
                    rs.getInt("cashin_id")+
                    "\" class=\"glyphicon glyphicon-pencil btn btn-primary\">编辑</a>&nbsp;" +
                    //"<a href=\"com.yukishira.cashin.DeleteCashInData?data_id="+
                    // rs.getInt("cashin_id")+
                    "<button type=\"button\" href=# onclick=\"confirmance("+
                    rs.getInt("cashin_id")+
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
</html>
