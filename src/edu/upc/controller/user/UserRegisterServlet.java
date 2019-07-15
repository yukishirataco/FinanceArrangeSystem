package edu.upc.controller.user;

import edu.upc.dao.UserDao;
import edu.upc.dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public UserRegisterServlet() {
        super();
    }
	
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String card = request.getParameter("card");
        Double wage = Double.parseDouble(request.getParameter("wage"));
        String call = request.getParameter("call");
        int age = Integer.parseInt(request.getParameter("age"));
        UserDao ud = new UserDaoImpl();
        int result = ud.userRegister(id, password, card, wage, call, age);

        //使用请求转发
        if (result == 1) {
            request.setAttribute("message", "注册成功，请登录");
            //通过getRequestDispatcher传递路径将请求转发给login.jsp
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        } else {
            request.setAttribute("message", "注册失败，用户名重复");
            //通过getRequestDispatcher传递路径将请求转发给login.jsp
            request.getRequestDispatcher("user_register.jsp").forward(request, response);
        }

    }

}
