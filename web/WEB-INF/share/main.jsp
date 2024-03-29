<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>证券账户信息</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/del.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<meta charset="UTF-8">
<title>证券账户信息</title>
</head>
<style>
    body {
        height: 100%;
        overflow: auto;
        background-color: #494a5f;
        color: white;
    }
</style>
<body text="white">
<form>
    <center><h1>证券账户信息</h1>
    </center>
    <table border="1" cellspacing="0" width="80%" align="center" class="table table-hover">
        <thead class="thead-dark">
        <tr>
            <th>账号</th>
            <th>密码</th>
            <th>手机号</th>
            <th>银行卡</th>
            <th>开户公司
            <th>操作</th>
        </tr>
        </thead>
        <c:if test="${shares==null }">
            <tr>
                <td colspan="6"><font color="red">没有符合条件的数据</font></td>
            </tr>
        </c:if>
        <c:if test="${shares!=null }">
            <c:forEach items="${shares }" var="item">
                <tr>
                    <td><font color="white">${item.shareaccount_id }</font></td>
                    <td><font color="white">${item.shareaccount_pwd }</font></td>
                    <td><font color="white">${item.shareaccount_num }</font></td>
                    <td><font color="white">${item.shareaccount_card }</font></td>
                    <td><font color="white">${item.shareaccount_company }</font></td>
                    <td>
                        <a class="btn btn-success" role="button"
                           href="${pageContext.request.contextPath }/GetSharebyIdServlet?shareaccount_id=${item.shareaccount_id}">修改</a>
                        <a class="btn btn-danger" role="button" href="javascript:mb(${item.shareaccount_id })">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>

    </table>
</form>
<center>
    <br/>
    <input class="btn btn-primary" type="button" value="查询"
           onclick="location.href='${pageContext.request.contextPath}/share_search.jsp'"><%="&nbsp"%><%="&nbsp"%><%="&nbsp"%>
    <input class="btn btn-primary" type="button" value="添加"
           onclick="location.href='${pageContext.request.contextPath}/share_insert.jsp'">
</center>
</body>
</html>