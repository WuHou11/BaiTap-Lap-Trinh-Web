<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
    <h2>Chào mừng bạn đến trang Home</h2>

    <% String username = (String) session.getAttribute("username"); %>
    <% if (username != null) { %>
        <p>Xin chào, <b><%= username %></b></p>
    <% } %>

    <form action="<%= request.getContextPath() %>/logout" method="get">
        <button type="submit">Logout</button>
    </form>
</body>
</html>
