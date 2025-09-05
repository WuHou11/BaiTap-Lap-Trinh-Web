<%@ page import="vn.iotstart.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
User user = (User) session.getAttribute("account");
if (user == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
    <h2>Trang chủ</h2>
    <p>Xin chào, <%=user.getFullName()%>!</p>
    <p>Bạn đã đăng nhập thành công vào hệ thống.</p>
    <p>
        <a href="<c:url value='/list'/>">Quản lý Category</a> | 
        <a href="<c:url value='/logout'/>">Đăng xuất</a>
    </p>
</body>
</html>
