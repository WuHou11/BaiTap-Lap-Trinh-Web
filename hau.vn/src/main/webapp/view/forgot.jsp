<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đặt lại mật khẩu</title>
</head>
<body>
	<h2>Đặt lại mật khẩu</h2>

	<c:if test="${not empty message}">
		<p style="color:green;">${message}</p>
	</c:if>

	<c:if test="${not empty error}">
		<p style="color:red;">${error}</p>
	</c:if>

	<form action="${pageContext.request.contextPath}/forget" method="post">
		<label>Email:</label><br>
		<input type="text" name="email" required><br><br>

		<label>Username:</label><br>
		<input type="text" name="username" required><br><br>

		<label>Số điện thoại:</label><br>
		<input type="text" name="phone" required><br><br>

		<label>Mật khẩu mới:</label><br>
		<input type="password" name="newPassword" required><br><br>

		<button type="submit">Cập nhật mật khẩu</button>
	</form>

	<p>
		<a href="${pageContext.request.contextPath}/login.jsp">Quay lại đăng nhập</a>
	</p>
</body>
</html>
