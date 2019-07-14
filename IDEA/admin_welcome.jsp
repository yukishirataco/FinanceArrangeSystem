<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<center>
    <p>
        欢迎
            <%
String name=(String)session.getAttribute("id");
out.println(name);
%>
    <p/>
    <p>
        请进入<a href="${pageContext.request.contextPath }/AdminGetAllUsersServlet">家庭理财管理系统</a>
    <p/>
    <p>
        <a href="invalidate.jsp">注销</a>
    <p/>
</center>
</body>
</html>