<%--
  Created by IntelliJ IDEA.
  User: npfjc
  Date: 2019/7/13
  Time: 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
    <title>报表查询</title>
</head>
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<link href="css/glyphfonts.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<body text="white">
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
</script>
<center>
    <h1>收支记录报表</h1>
</center>
<%
    long Leftout = 0;
    long sumcashout = 0;
%>
<center>
    <h2>
        收入记录
    </h2>
</center>
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
        out.print("<tr>");
        while(rs.next()){

            out.print("<td><font color=\"white\">"+rs.getInt("cashin_id")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getInt("cashin_cash")+"</td>");
            Leftout = Leftout + rs.getInt("cashin_cash");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_type")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_person")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_date")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_source")+"</td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashin_note")+"</td>");
        }
        out.print("</tr></table>\n</tbody>");
    }catch(SQLException e){
        e.printStackTrace();
    }
%>
    <center>
        <h2>
            支出记录
        </h2>
    </center>
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
            Leftout = Leftout - rs.getInt("cashout_cash");
            sumcashout = sumcashout + rs.getInt("cashout_cash");
            out.print("<td><font color=\"white\">"+rs.getInt("cashout_cash")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_type")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_person")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_date")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_source")+"</font></font></td>");
            out.print("<td><font color=\"white\">"+rs.getString("cashout_note")+"</font></font></td>");
            out.print("</tr>");
        }
        out.print("</table>\n</tbody>");
    }catch(SQLException e){
        e.printStackTrace();
    }
%>

        <table class="table table-hover" border="1">
            <thead class="thead-dark">
            <tr>
                <th>剩余余额</th>
                <th>总支出额</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><font color="white"><%=Leftout%>
                </td>
                <td><font color="white"><%=sumcashout%>
                </td>
            </tr>
            </tbody>
</body>
</html>
