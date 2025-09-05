<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa Category</title>
</head>
<body>
    <h2>Chỉnh sửa Category</h2>

    <form action="${pageContext.request.contextPath}/edit" 
          method="post" enctype="multipart/form-data">
        
        <!-- ID category -->
        <input type="hidden" name="id" value="${category.cateid}">

        <!-- Tên category -->
        <label for="name">Tên Category:</label><br>
        <input type="text" id="name" name="name" 
               value="${category.catename}" required><br><br>

        <!-- Hình ảnh -->
        <label for="icon">Ảnh Category:</label><br>
        <input type="file" id="icon" name="icon"><br>
        <c:if test="${not empty category.icon}">
            <p>Ảnh hiện tại:</p>
            <c:url value="/image?fname=${category.icon}" var="imgUrl"/>
            <img src="${imgUrl}" alt="Category icon" style="max-height:100px;">
        </c:if>
        <br><br>

        <!-- Nút lưu / hủy -->
        <button type="submit">Lưu thay đổi</button>
        <a href="${pageContext.request.contextPath}/list">Hủy</a>
    </form>
</body>
</html>
