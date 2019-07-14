<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/del.js"></script>
</head>
<body text="white">
<style>
    body {
        background-color: #494a5f;
        color: white;
    }
</style>
<form>
    <center><h1>证券流水账信息表</h1>
        <%/*账号:<input type="text" name="sharestream_id"><br/>
代码:<input type="text" name="sharestream_no"><br/>
股票名称:<input type="text" name="sharestream_name"><br/>
成本价:<input type="text" name="sharestream_begin"><br/>
开盘价:<input type="text" name="sharestream_end"><br/>
持仓数:<input type="text" name="sharestream_amount"><br/> 
<input type="submit" value="查询" onclick="${pageContext.request.contextPath }/QuerySOIbyidServlet?shareowned_id=${item.shareowned_id}'">*/%>
        <input class="btn btn-primary" type="button" value="查询"
               onclick="location.href='${pageContext.request.contextPath}/query.jsp'">
        <input class="btn btn-primary" type="button" value="添加"
               onclick="location.href='${pageContext.request.contextPath}/insert.jsp'"><br/><br/>
    </center>
    <table border="1" cellspacing="0" width="80%" align="center" class="table table-hover">
        <thead class="thead-dark">
        <tr>
            <th>账号</th>
            <th>代码</th>
            <th>股票名称</th>
            <th>买入</th>
            <th>卖出</th>
            <th>日期</th>
            <th>操作</th>
        </tr>
        </thead>
        <c:if test="${SSIs==null }">
            <tr>
                <td colspan="7"><font color="red">没有符合条件的数据</font></td>
            </tr>
        </c:if>
        <c:if test="${SSIs!=null }">
            <c:forEach items="${SSIs }" var="item">
                <tr>
                    <td><font color="white">${item.sharestream_id }</font></td>
                    <td><font color="white">${item.sharestream_no }</font></td>
                    <td><font color="white">${item.sharestream_name }</font></td>
                    <td><font color="white">${item.sharestream_in }</font></td>
                    <td><font color="white">${item.sharestream_out }</font></td>
                    <td><font color="white">${item.sharestream_date }</font></td>
                    <td>
                        <a role="button" class="btn btn-success"
                           href="${pageContext.request.contextPath }/GetSSIbyidnoServlet?sharestream_id=${item.sharestream_id}&sharestream_no=${item.sharestream_no}">修改</a>
                        <a role="button" class="btn btn-danger"
                           href="javascript:ma(${item.sharestream_id },${item.sharestream_no })">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>

    </table>
</form>
</body>
</html>