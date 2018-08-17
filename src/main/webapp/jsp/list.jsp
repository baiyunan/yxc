<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index_work.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
	function fenye(current){
		$("#current").val(current);
		$("#myform").submit();
	}
	function yuyue(id){
		location.href="<%=request.getContextPath()%>/YuYue?id="+id;
	}
	function chakan(){
		location.href="<%=request.getContextPath()%>/jsp/chakan.jsp";
	}
</script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/list" method="post" id="myform">
		<table>
			<tr>
				<td>
				<input type="hidden" id="current" name="current">
				<input type="text" id="mohu" name="mohu">
				<input type="submit" value="查询">
				</td>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td>服务编号</td>
			<td>名称</td>
			<td>类型</td>
			<td>价格</td>
			<td>备注</td>
			<td>
				<input type="button" value="查看预约" onclick="chakan()">
			</td>
		</tr>
		<c:forEach items="${list }" var="h">
			<tr>
				<td>${h.id }</td>
				<td>${h.name }</td>
				<td>${h.type }</td>
				<td>${h.price }</td>
				<td>${h.bz }</td>
				<td>
					<input type="button" value="我要预约" onclick="yuyue(${h.id })">
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>