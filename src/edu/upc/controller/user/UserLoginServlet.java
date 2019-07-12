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
import java.io.PrintWriter;

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
        PrintWriter out = response.getWriter();
        UserDao userdao = new UserDaoImpl();
        boolean result = userdao.userLogin(id, password);

        if (result == true) {
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            request.getRequestDispatcher("index_user.jsp").forward(request, response);
        } else {
            out.println("<script>");
            out.println("alert(\"您输入的密码不正确或者该用户不存在！\"");
            response.sendRedirect("user_login.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        this.doGet(request, response);
    }
}
