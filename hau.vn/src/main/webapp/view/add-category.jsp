<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm Category</title>
</head>
<body>
    <h1>Thêm Category</h1>
    
    <c:if test="${message != null}">
        <p style="color:red;">${message}</p>
    </c:if>
    
    <form action="${pageContext.request.contextPath}/add" 
          method="post" enctype="multipart/form-data">
        
        <label for="name">Tên danh mục <span style="color:red">*</span></label><br>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="icon">Ảnh đại diện</label><br>
        <input type="file" id="icon" name="icon" accept="image/*"><br><br>
        
        <button type="submit">Lưu danh mục</button>
        <a href="${pageContext.request.contextPath}/list">Hủy</a>
    </form>
</body>
</html>
