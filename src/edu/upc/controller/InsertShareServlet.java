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
 * Servlet implementation class InsertShareServlet
 */
@WebServlet("/InsertShareServlet")
public class InsertShareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertShareServlet() {
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
		int id=Integer.parseInt(request.getParameter("shareaccount_id"));
		String pwd=request.getParameter("shareaccount_pwd");
		String num=request.getParameter("shareaccount_num");
		String card=request.getParameter("shareaccount_card");
		String company=request.getParameter("shareaccount_company");
		ShareAccountInfo share=new ShareAccountInfo(id,pwd,num,card,company);
			
		
		//找到某个业务逻辑处理
		ShareServiceImpl  shareService=ShareServiceImpl.getInstance();
		shareService.insertShare(share);
		
		
			
		//3.找到某个视图响应
		request.getRequestDispatcher("GetAllServlet").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
