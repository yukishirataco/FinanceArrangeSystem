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
@WebServlet("/GetSharebyIdServlet2")
public class GetSharebyIdServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSharebyIdServlet2() {
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
			//找到某个业务逻辑处理
				ShareServiceImpl  shareService=ShareServiceImpl.getInstance();
				ShareAccountInfo shareaccount =shareService.getShareById(shareaccount_id);
				request.setAttribute("shareaccount", shareaccount);
				//request.setAttribute("shareaccount_id", shareaccount_id);
			//3.找到某个视图响应
			request.getRequestDispatcher("/share_searchresult.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
