<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index_work.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
	$(function(){
		var id=${param.id};
		$.ajax({
			url:"<%=request.getContextPath()%>/getData",
			data:{id:id},
			dataType:"json",
			type:"post",
			success:function(obj){
				$("[name=id]").val(obj.id);
				$("[name=name]").val(obj.name);
			}
		})
	})
	function yuyue(){
		$.ajax({
			url:"<%=request.getContextPath()%>/update",
			date:$("form").serialize(),
			dataType:"json",
			type:"post",
			success:function(obj){
				if(obj>0){
					alert("预约成功");
					location.href="<%=request.getContextPath()%>/list";
				}else{
					alert("预约失败");
				}
			}
		})
	}
</script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/update" method="post">
		<table>
			<tr>
				<td>服务编号:<input type="text" name="yid"></td>
			</tr>
			<tr>
				<td>服务名称:<input type="text" name="name"></td>
			</tr>
			<tr>
				<td>上门日期:<input type="text" name="date" onclick="WdatePicker()"></td>
			</tr>
			<tr>
				<td>上门地址:<input type="text" name="adress"></td>
			</tr>
			<tr>
				<td>联系电话:<input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>服务备注:<input type="text" name="bz"></td>
			</tr>
			<tr>
				<td><input type="button" value="预约" onclick="yuyue()"></td>
			</tr>
		</table>
	</form>
</body>
</html>