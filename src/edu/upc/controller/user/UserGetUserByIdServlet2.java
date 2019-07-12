package edu.upc.controller.user;

import edu.upc.dao.User;
import edu.upc.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserGetUserByIdServlet2")
public class UserGetUserByIdServlet2 extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public UserGetUserByIdServlet2() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        UserServiceImpl userService = UserServiceImpl.getInstance();
        User user = userService.getUserById(id);
        String pwd = user.getPassword();
        request.getSession().setAttribute("pwd", pwd);
        request.getSession().setAttribute("id", id);
        request.setAttribute("user", user);
        request.getRequestDispatcher("user_update2.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

}
