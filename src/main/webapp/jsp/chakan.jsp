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

</script>
</head>
<body>
	<table>
		<tr>
			<td>服务编号</td>
			<td>服务名称</td>
			<td>上门日期</td>
			<td>上门地址</td>
			<td>联系电话</td>
			<td>服务备注</td>
		</tr>
		<c:forEach items="${clist }" var="c">
			<tr>
				<td>${c.id }</td>
				<td>${c.name }</td>
				<td>${c.date }</td>
				<td>${c.adress }</td>
				<td>${c.phone }</td>
				<td>${c.bz }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>