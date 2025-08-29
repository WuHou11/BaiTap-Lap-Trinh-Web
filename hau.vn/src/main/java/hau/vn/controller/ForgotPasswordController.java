package hau.vn.controller;
import hau.vn.service.UserService;
import hau.vn.service.lmpl.UserServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;


@WebServlet(urlPatterns = "/forget-password")
public class ForgotPasswordController extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/forget.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String identifier = req.getParameter("identifier"); // email hoặc username
        String newPassword = req.getParameter("newPassword");

        String msg = null;
        String err = null;

        if (identifier == null || identifier.trim().isEmpty() || newPassword == null || newPassword.trim().isEmpty()) {
            err = "Vui lòng nhập đủ thông tin (identifier và mật khẩu mới).";
            req.setAttribute("err", err);
            req.getRequestDispatcher("/views/forget.jsp").forward(req, resp);
            return;
        }

        boolean ok = userService.resetPassword(identifier.trim(), newPassword.trim()); // simple reset
        if (ok) {
            msg = "Đổi mật khẩu thành công.";
            req.setAttribute("msg", msg);
        } else {
            // Trường hợp không tìm user hoặc lỗi DB -> nhưng theo yêu cầu bạn có thể vẫn coi là thành công.
            // Ở đây tôi báo lỗi nếu DB không cập nhật (ví dụ k kết nối được)
            err = "Không thể đổi mật khẩu (lỗi hệ thống).";
            req.setAttribute("err", err);
        }
        req.getRequestDispatcher("/views/forget.jsp").forward(req, resp);
    }
}
