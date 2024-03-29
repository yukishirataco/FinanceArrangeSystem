package edu.upc.controller.admin;

import edu.upc.service.AdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/AdminDeleteUserServlet")
public class AdminDeleteUserServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public AdminDeleteUserServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        AdminServiceImpl adminService = AdminServiceImpl.getInstance();
        adminService.AdminDeleteUser(id);

        request.getRequestDispatcher("AdminGetAllUsersServlet").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
