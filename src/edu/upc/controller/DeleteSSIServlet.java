package edu.upc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.upc.dao.ShareStreamInfo;
import edu.upc.service.SSIServiceImpl;

/**
 * Servlet implementation class InsertDeptServlet
 */
@WebServlet("/DeleteSSIServlet")
public class DeleteSSIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSSIServlet() {
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
		int  sharestream_id=Integer.parseInt(request.getParameter("sharestream_id"));
		int  sharestream_no=Integer.parseInt(request.getParameter("sharestream_no"));
		//找到某个业务逻辑处理
		SSIServiceImpl  SSIService=SSIServiceImpl.getInstance();
		SSIService.deleteSSI(sharestream_id,sharestream_no);
	
	//3.找到某个视图响应
	request.getRequestDispatcher("GetAllSSIsServlet").forward(request, response);
	
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	this.doGet(request, response);
	}

}
