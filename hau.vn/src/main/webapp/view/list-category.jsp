<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách Category</title>
</head>
<body>
    <h1>Quản lý Category</h1>

    <!-- Nút điều hướng -->
    <p>
        <a href="javascript:history.back()">← Quay lại</a> |
        <a href="${pageContext.request.contextPath}/login">Trang chủ</a> |
        <a href="${pageContext.request.contextPath}/add">+ Thêm Category</a>
    </p>

    <c:if test="${not empty cateList}">
        <table border="1" cellpadding="6" cellspacing="0">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Ảnh</th>
                    <th>Tên Category</th>
                    <th>Ngày tạo</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${cateList}" var="cate" varStatus="STT">
                    <tr>
                        <td>${STT.index + 1}</td>
                        <td>
                            <c:choose>
                                <c:when test="${not empty cate.icon}">
                                    <c:url value="/image?fname=${cate.icon}" var="imgUrl"/>
                                    <img src="${imgUrl}" alt="${cate.catename}" height="60">
                                </c:when>
                                <c:otherwise>Không có ảnh</c:otherwise>
                            </c:choose>
                        </td>
                        <td>${cate.catename}</td>
                        <td>${cate.createdDate}</td>
                        <td>
                            <a href="<c:url value='/edit?id=${cate.cateid}'/>">Sửa</a> | 
                            <a href="<c:url value='/delete?id=${cate.cateid}'/>"
                               onclick="return confirm('Bạn có chắc muốn xóa category này?')">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty cateList}">
        <p>Chưa có category nào. 
           <a href="${pageContext.request.contextPath}/add">Thêm mới ngay!</a>
        </p>
    </c:if>
</body>
</html>
