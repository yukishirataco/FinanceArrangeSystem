<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/del.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script>
        function ma(shareowned_id, shareowned_no) {
            if (confirm("确认删除吗?")) {
                location.href = "DeleteSOIServlet?shareowned_id=" + shareowned_id + "&shareowned_no=" + shareowned_no;
            }

        }
    </script>
</head>
<body>
<form>
    <center><h1>持股信息表</h1>

        <%/* 账号:<input type="text" name="shareowned_id"><br/>*/%>
        <input class="btn btn-primary" type="button" value="查询"
               onclick="location.href='${pageContext.request.contextPath}/search1.jsp'">
        <input class="btn btn-primary" type="button" value="添加"
               onclick="location.href='${pageContext.request.contextPath}/soi_insert.jsp'">
    </center>
    <table border="1" cellspacing="0" width="80%" style="height:100%;" align="center" class="table table-hover">
        <thead class="thead-dark">
        <tr>
            <th>账号</th>
            <th>代码</th>
            <th>股票名称</th>
            <th>成本价</th>
            <th>开盘价</th>
            <th>持仓数</th>
            <th>操作</th>
        </tr>
        </thead>
        <c:if test="${SOIs==null }">
            <tr>
                <td colspan="7"><font color="red">没有符合条件的数据</font></td>
            </tr>
        </c:if>
        <c:if test="${SOIs!=null }">
            <c:forEach items="${SOIs }" var="item">
                <tr>
                    <td>${item.shareowned_id }</td>
                    <td>${item.shareowned_no }</td>
                    <td>${item.shareowned_name }</td>
                    <td>${item.shareowned_begin }</td>
                    <td>${item.shareowned_end }</td>
                    <td>${item.shareowned_amount }</td>
                    <td>
                        <a role="button" class="btn btn-success"
                           href="${pageContext.request.contextPath }/GetSOIByidno?shareowned_id=${item.shareowned_id}&shareowned_no=${item.shareowned_no}">修改</a>
                        <a role="button" class="btn btn-danger"
                           href="javascript:ma(${item.shareowned_id} , ${item.shareowned_no})">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>

    </table>
</form>
</body>
</html>