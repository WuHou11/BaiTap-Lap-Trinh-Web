<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="forget-password" method="post">
		<h2>Quên mật khẩu</h2>
		<c:if test="${msg != null}">
			<h3 class="alert alert-success">${msg}</h3>
		</c:if>
		<c:if test="${err != null}">
			<h3 class="alert alert-danger">${err}</h3>
		</c:if>

		<section>
			<label class="input login-input">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
						type="text" placeholder="Email hoặc Username" name="identifier"
						class="form-control">
				</div>
			</label>
		</section>

		<section>
			<label class="input login-input">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
						type="password" placeholder="Mật khẩu mới" name="newPassword"
						class="form-control">
				</div>
			</label>
		</section>

		<button type="submit">Đổi mật khẩu</button>
	</form>
</body>
</html>