<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.col{color:red;}
</style>
<script type="text/javascript">
function snull(){
	var pid=document.getElementById("pid").value;
	var ts=document.getElementById("ts");
	if(pid===''){
		ts.innerHTML="必填"
		//ts.style.color="red"
		return false;
	}else{
		return true;
	}
}
</script>
</head>
<body>

<h1>新增业务</h1>
<form action="/bank/addbank" onSubmit="snull()">
业务类型：
<select name="btype">
	<option selected="selected">信用卡</option>
	<option>借记卡</option>
</select><br>
排队号:<input type="text" required="required" name="pid" id="pid" onblur="snull()">
<span id="ts" class="col"></span>
<br>
备注信息：<textarea rows="10" cols="15" name="info" ></textarea><br>
<input type="submit" value="确认添加">
</form>
</body>
</html>