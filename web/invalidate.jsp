<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<body>
<%
    session.invalidate();
    response.sendRedirect("user_login.jsp");
%>
</body>
</html>