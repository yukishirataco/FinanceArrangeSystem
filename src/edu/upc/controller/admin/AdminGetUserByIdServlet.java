package edu.upc.controller.admin;

import edu.upc.dao.User;
import edu.upc.service.AdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AdminGetUserByIdServlet")
public class AdminGetUserByIdServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public AdminGetUserByIdServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");

        AdminServiceImpl adminService = AdminServiceImpl.getInstance();
        User user = adminService.getUserById(id);
        request.setAttribute("user", user);

        request.getRequestDispatcher("updateUser.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
