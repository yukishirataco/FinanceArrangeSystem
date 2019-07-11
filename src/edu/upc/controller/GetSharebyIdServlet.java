package edu.upc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.upc.dao.ShareAccountInfo;
import edu.upc.service.ShareServiceImpl;

/**
 * Servlet implementation class GetSharebyIdServlet
 */
@WebServlet("/GetSharebyIdServlet")
public class GetSharebyIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSharebyIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//接受请求并处理
			response.setContentType("text/html;charset=utf-8");
			request.setCharacterEncoding("UTF-8");
			int  shareaccount_id=Integer.parseInt(request.getParameter("shareaccount_id"));
			ShareServiceImpl  shareService=ShareServiceImpl.getInstance();
			//request.setAttribute("shareaccount_id", shareaccount_id);
			ShareAccountInfo shareaccount =shareService.getShareById(shareaccount_id);
			request.setAttribute("shareaccount", shareaccount);
			//3.找到某个视图响应
			request.getRequestDispatcher("WEB-INF/share/update.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
