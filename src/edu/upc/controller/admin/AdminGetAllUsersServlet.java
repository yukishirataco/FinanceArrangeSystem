package edu.upc.controller.admin;

import edu.upc.dao.User;
import edu.upc.service.AdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/AdminGetAllUsersServlet")
public class AdminGetAllUsersServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public AdminGetAllUsersServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");

        AdminServiceImpl adminService = AdminServiceImpl.getInstance();
        List<User> users = adminService.getAllUsers();
        request.setAttribute("users", users);

        request.getRequestDispatcher("main.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

}
