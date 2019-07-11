<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加信息</title>
<script>
function  ma()
{
	//方式一
	var user=document.forms[0].shareowned_id.value;
var  d1=document.getElementById("d1");
if(user=="" || user==null)
{
	//alert("账号不能为空");
d1.innerHTML="<font color=red>用户名不能为空</font>";
}else
{
	d1.innerHTML="";
}
}
function  mb()
{
	//方式一
	var user=document.forms[0].shareowned_no.value;
var  d1=document.getElementById("d2");
if(user.length!=6)
{
	//alert("代码必须六位");
d1.innerHTML="<font color=red>代码必须六位</font>";
}else
{
	d1.innerHTML="";
}
}
function  mc()
{
	//方式一
	var user=document.forms[0].shareowned_name.value;
var  d1=document.getElementById("d3");
if(user=="" || user==null)
{
	//alert("账号不能为空");
d1.innerHTML="<font color=red>股票名称不能为空</font>";
}else
{
	d1.innerHTML="";
}
}
function   clicked() 
{
	//方式一
	var user1=document.forms[0].shareowned_id.value;
	var user2=document.forms[0].shareowned_no.value;
	var user3=document.forms[0].shareowned_name.value;
	var user4=document.forms[0].shareowned_begin.value;
	var user5=document.forms[0].shareowned_end.value;
	var user6=document.forms[0].shareowned_amount.value;
if(user1=="" || user1==null||user2=="" || user2==null||user3=="" || user3==null||user4=="" || user4==null||user5=="" || user5==null||user6=="" || user6==null)
{
	

	alert("请输入完整信息");
	return false;
//d1.innerHTML="<font color=red>用户名不能为空</font>";
}else
{
	return true;
	//d1.innerHTML="";
}
}
</script>
</head>
<body>
<form action="${pageContext.request.contextPath }/InsertSOIServlet" method="post">
<center>
账号：<input type="text" name="shareowned_id"  id="u" onblur="ma()"/><span id="d1"></span><br/>
代码：<input type="text" name="shareowned_no"  id="u" onblur="mb()"/><span id="d2"></span><br/>
股票名称：<input type="text" name="shareowned_name"  id="u" onblur="mc()"/><span id="d3"></span><br/>
成本价：<input type="text" name="shareowned_begin"  id="u"/><span id="d4"></span><br/>
开盘价：<input type="text" name="shareowned_end"  id="u" /><span id="d5"></span><br/>
持仓数：<input type="text" name="shareowned_amount"  id="u"/><span id="d6"></span><br/>
<br/>
<input type="submit" value="添加信息" onclick="return clicked();">
</center>
</form>
</body>
</html>