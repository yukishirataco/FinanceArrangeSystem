<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/normalize.css"/>
<link rel="stylesheet" type="text/css" href="css/htmleaf-demo2.css">
<link rel="stylesheet" href="css/style2.css">
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<center>
    <h1>管理员主页</h1>
    <p>
        欢迎您进入家庭财务管理系统，管理员
            <%
String name=(String)session.getAttribute("id");
out.println(name);
%>
    <p/>
    <p>
        请使用以下功能对该系统进行管理与操作
    <p/>
    <p>
        <a href="invalidate.jsp">注销</a>
    <p/>
    <center>
        <div id="fourth" class="buttonBox"
             onclick="location.href='${pageContext.request.contextPath}/AdminGetAllUsersServlet'">
            <button>用户信息管理系统</button>
            <div class="border"></div>
            <div class="border"></div>
            <div class="border"></div>
            <div class="border"></div>
            <p></p>
            <p>
        </div>
    </center>
    <p/>

</center>
</body>
</html>