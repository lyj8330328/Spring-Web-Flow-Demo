<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'viewCart.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<h1>View Cart</h1>
	<h2>Items in Your Cart</h2>
	<c:choose>
		<c:when test="${empty cart.items}">
			<p>Your cart is empty.</p>
		</c:when>
		<c:otherwise>
			<table border="1" cellspacing="0">
				<tr>
					<th>Item</th>
					<th>Quantity</th>
					<th>Unit Price</th>
					<th>Total</th>
				</tr>

				<c:forEach var="item" items="${cart.items}">
					<tr>
						<td>${item.product.description}</td>
						<td>${item.quantity}</td>
						<td>${item.product.price}</td>
						<td>${item.totalPrice}</td>
					</tr>
				</c:forEach>

				<tr>
					<td>TOTAL:</td>
					<td></td>
					<td></td>
					<td>${cart.totalPrice}</td>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>

	<a href="${flowExecutionUrl}&_eventId=submit">Submit</a>
	<h2>Products for Your Choice</h2>

	<table>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.description}</td>
				<td>${product.price}</td>


				<td><a
					href="${flowExecutionUrl}&_eventId=addToCart&productId=${product.id}">[add
						to cart]</a></td>


			</tr>
		</c:forEach>

	</table>
</body>
</html>
