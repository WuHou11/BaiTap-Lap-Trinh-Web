<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	register
	<form action="register" method="post">
		<h2>Tạo tài khoản mới</h2>
		<c:if test="${alert != null}">
			<h3 class="alert alert-danger">${alert}</h3>
		</c:if>

		<input type="text" name="username" placeholder="Tài khoản" required />
		<input type="password" name="password" placeholder="Mật khẩu" required />
		<input type="text" name="fullname" placeholder="Họ tên" required /> <input
			type="email" name="email" placeholder="Email" required /> <input
			type="text" name="phone" placeholder="Số điện thoại" required />

		<button type="submit">Đăng ký</button>
	</form>

</body>
</html>