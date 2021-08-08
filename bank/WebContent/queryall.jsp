<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
 
  <style>
   table{
   	border:1px solid block;
   	border-collapse: collapse;
   }
   th,td{
   border :1px solid red;
   }
  </style>
</head>
<body>
<script>
$(function(){
	$(".del").click(function(){
	var tr=	$(this).parent().parent()
	tr.remove()
	})
	$(".ban").click(function(){
		var tds=$(this).parent().siblings()
		
		var td0=tds.eq(0).html()
		var td1=tds.eq(1).html()
		var td2=tds.eq(2).html()
		var td3=tds.eq(3).html()
		var td4=tds.eq(4).html()
		var td5=tds.eq(5).html()
		var td6=tds.eq(6).html()
		$("#form1 input:eq(0)").val(td0)
		$("#form1 input:eq(1)").val(td1)
		$("#form1 input:eq(2)").val(td2)
		$("#form1 input:eq(3)").val(td3)
		$("#form1 input:eq(4)").val(td4)
		$("#form1 input:eq(5)").val(td5)
		$("#form1 input:eq(6)").val(td6)
	})
	
})
</script>
<h1>业务详情</h1>
<form action="/bank/addBus" id="form1">
       业务序号<input type="text" name="bid" ><br>
	排队号<input type="text" name="pid" >	<br>
	业务类型	<input type="text" name="btype"><br>
	备注信息	<input type="text" name="info" ><br>
		
	详情编号:<input type="text" name="xid" ><br>
	详情名称	<input type="text" name="name" ><br>
	办理人	<input type="text" name="handler"><br>
	<input type="submit" value="确认提交">
</form>	
<h1>业务列表</h1>
<form action="/bank/selectAll">
<table>
<tr>
	<th>业务序号</th>
	<th>排队号</th>
	<th>业务类型</th>
	<th>备注信息</th>
	<th>详情编号</th>
	<th>详情名称</th>
	<th>办理人</th>
	<th>操作内容</th>
</tr>
<c:forEach items="${sessionScope.list}" var="bank">
	<tr>
		<td>${bank.bid}</td>
		<td>${bank.pid}</td>
		<td>${bank.btype}</td>
		<td>${bank.info}</td>
		<td>${bank.detail.xid}</td>
		<td>${bank.detail.name}</td>
		<td>${bank.detail.handler}</td>
		<td>
		<a href="#" class="ban" >办理业务</a>
		<a href="#" class="del">删除业务</a>
		</td>
	</tr>
	
</c:forEach>
<tr>
<td colspan="8" style="text-align:center"><a href="addbank.jsp">添加业务</a></td>
</tr>
</table>
</form>
</body>
</html>