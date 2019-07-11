package edu.upc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.upc.dao.ShareOwnedInfo;
import edu.upc.service.SOIService;
import edu.upc.service.SOIServiceImpl;

/**
 * Servlet implementation class InsertDeptServlet
 */
@WebServlet("/UpdateSOIServlet")
public class UpdateSOIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSOIServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//接受请求并处理
		response.setContentType("text/html;charset = utf-8");
		request.setCharacterEncoding("UTF-8");
		int  shareowned_id=Integer.parseInt(request.getParameter("shareowned_id"));
		int  shareowned_no=Integer.parseInt(request.getParameter("shareowned_no"));
		String  shareowned_name=request.getParameter("shareowned_name");
		double  shareowned_begin=Double.parseDouble(request.getParameter("shareowned_begin"));
		double  shareowned_end=Double.parseDouble(request.getParameter("shareowned_end"));
		int  shareowned_amount=Integer.parseInt(request.getParameter("shareowned_amount"));
	ShareOwnedInfo  shareownedinfo=new ShareOwnedInfo(shareowned_id,shareowned_no,shareowned_name,shareowned_begin,shareowned_end,shareowned_amount);
	//找到某个业务逻辑处理
	SOIServiceImpl  SOIService=SOIServiceImpl.getInstance();
	SOIService.updateSOI(shareownedinfo);
	
	//3.找到某个视图响应
	request.getRequestDispatcher("GetAllSOIsServlet").forward(request, response);
	
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	this.doGet(request, response);
	}

}
