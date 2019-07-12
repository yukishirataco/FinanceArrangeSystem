<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户主页</title>

</head>


<center>
    <h1>用户主页</h1>
    <p>
    <div>欢迎您，用户：<%
        String name = (String) session.getAttribute("id");
        out.println(name);
        request.setAttribute("name", name);
    %></div>
    <p/>
    <div>
        <a href="${pageContext.request.contextPath }/UserGetUserByIdServlet3?id=${name}">查询信息</a>

    </div>
    <div>
        <a href="${pageContext.request.contextPath }/UserGetUserByIdServlet?id=${name}">修改密码</a>

    </div>
    <div>
        <a href="${pageContext.request.contextPath }/UserGetUserByIdServlet2?id=${name}">修改用户信息</a>

    </div>
    <p>
        <a href="invalidate.jsp">注销账号</a>
    <p/>
</center>
</html>