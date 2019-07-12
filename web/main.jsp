<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/del.js"></script>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <script>
        function deleteUser(id) {
            if (confirm("确认删除吗?")) {
                location.href = "AdminDeleteUserServlet?id=" + id;
            }

        }
    </script>
</head>
<body>
<center>

    <center><h1>用户信息管理系统</h1>
        <form action="${pageContext.request.contextPath }/AdminGetUserByIdServlet" method="post">
            用户ID:<input class="form-control" type="text" name="id"><br/>
            <input class="btn btn-primary" type="submit" value="查询">
            <input class="btn btn-primary" type="button" value="添加"
                   onclick="location.href='${pageContext.request.contextPath}/insertUser.jsp'">
        </form>
    </center>
    <table border="1" cellspacing="0" width="80%" align="center" class="table table-hover">
        <thead class="thead-dark thead">
        <tr>
            <th>用户账号</th>
            <th>用户密码</th>
            <th>用户银行账号</th>
            <th>用户工资</th>
            <th>用户家庭称呼</th>
            <th>用户年龄</th>
            <th>用户操作</th>
        </tr>
        </thead>
        <c:if test="${users==null }">
            <tr>
                <td colspan="7"><font color="red">没有符合条件的数据</font></td>
            </tr>
        </c:if>
        <c:if test="${users!=null }">
            <c:forEach items="${users }" var="item">
                <tr>
                    <td>${item.id }</td>
                    <td>${item.password }</td>
                    <td>${item.card }</td>
                    <td>${item.wage }</td>
                    <td>${item.call }</td>
                    <td>${item.age }</td>
                    <td>
                        <a class="btn btn-primary"
                           href="${pageContext.request.contextPath }/AdminGetUserByIdServlet?id=${item.id}">修改</a>
                        <a class="btn btn-danger" href="javascript:deleteUser(${item.id })">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
    </form>
</center>
</body>
</html>