package edu.upc.controller.user;

import edu.upc.dao.User;
import edu.upc.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserUpdateInfoServlet")
public class UserUpdateInfoServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public UserUpdateInfoServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        User user = new User(id, password);
        UserServiceImpl userService = UserServiceImpl.getInstance();
        userService.UserUpdateInfo2(user);

        request.getRequestDispatcher("user_welcome.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

}
