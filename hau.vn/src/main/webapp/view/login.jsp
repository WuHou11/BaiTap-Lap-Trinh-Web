<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>
    <h2>Đăng nhập hệ thống</h2>

    <!-- Hiển thị lỗi -->
    <c:if test="${alert != null}">
        <p style="color:red;">${alert}</p>
    </c:if>

    <!-- Hiển thị thông báo thành công khi reset mật khẩu -->
    <c:if test="${param.message == 'resetSuccess'}">
        <p style="color:green;">Cập nhật mật khẩu thành công. Hãy đăng nhập lại.</p>
    </c:if>

    <!-- Form đăng nhập -->
    <form action="${pageContext.request.contextPath}/login" method="post">
        <p>
            <label>Tài khoản:</label><br>
            <input type="text" name="username" required>
        </p>
        <p>
            <label>Mật khẩu:</label><br>
            <input type="password" name="password" required>
        </p>
        <p>
            <button type="submit">Đăng nhập</button>
        </p>
    </form>

    <!-- Link phụ -->
    <p>
        <a href="${pageContext.request.contextPath}/forget.jsp">Quên mật khẩu?</a>
    </p>
    <p>
        Chưa có tài khoản? 
        <a href="${pageContext.request.contextPath}/register.jsp">Đăng ký</a>
    </p>
</body>
</html>
