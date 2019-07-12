package edu.upc.controller.admin;

import edu.upc.dao.User;
import edu.upc.service.AdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AdminInsertUserServlet")
public class AdminInsertUserServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public AdminInsertUserServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String card = request.getParameter("card");
        Double wage = Double.parseDouble(request.getParameter("wage"));
        String call = request.getParameter("call");
        int age = Integer.parseInt(request.getParameter("age"));
        User user = new User(id, password, card, wage, call, age);

        AdminServiceImpl adminService = AdminServiceImpl.getInstance();
        adminService.AdminInsertUser(user);

        request.getRequestDispatcher("AdminGetAllUsersServlet").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
