<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>
</head>
<body>
    <h2>Đăng ký</h2>

    <!-- Thông báo lỗi nếu có -->
    <c:if test="${not empty error}">
        <p style="color:red;">${error}</p>
    </c:if>

    <!-- Form đăng ký -->
    <form action="${pageContext.request.contextPath}/register" method="post">
        <p>
            <label>Email:</label><br>
            <input type="text" name="email" required>
        </p>
        <p>
            <label>Username:</label><br>
            <input type="text" name="username" required>
        </p>
        <p>
            <label>Họ tên:</label><br>
            <input type="text" name="fullname" required>
        </p>
        <p>
            <label>Mật khẩu:</label><br>
            <input type="password" name="password" required>
        </p>
        <p>
            <label>Số điện thoại:</label><br>
            <input type="text" name="phone">
        </p>
        <p>
            <button type="submit">Đăng ký</button>
        </p>
    </form>

    <!-- Link quay lại login -->
    <p>
        Đã có tài khoản? 
        <a href="${pageContext.request.contextPath}/login.jsp">Đăng nhập</a>
    </p>
</body>
</html>
