package edu.upc.controller.user;

import edu.upc.dao.UserDao;
import edu.upc.dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public UserLoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        UserDao userdao = new UserDaoImpl();
        boolean result = userdao.userLogin(id, password);

        if (result == true) {
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            response.sendRedirect("user_login.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        this.doGet(request, response);
    }
}
