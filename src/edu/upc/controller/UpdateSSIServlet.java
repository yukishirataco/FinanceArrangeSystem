package edu.upc.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.upc.dao.ShareStreamInfo;
import edu.upc.service.SSIService;
import edu.upc.service.SSIServiceImpl;

/**
 * Servlet implementation class InsertDeptServlet
 */
@WebServlet("/UpdateSSIServlet")
public class UpdateSSIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSSIServlet() {
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
		String  sharestream_name=request.getParameter("sharestream_name");
		int  sharestream_in=Integer.parseInt(request.getParameter("sharestream_in"));
		int  sharestream_out=Integer.parseInt(request.getParameter("sharestream_out"));
		//Date  sharestream_date=request.getParameter("sharestream_date");
		Timestamp sharestream_date=Timestamp.valueOf((request.getParameter("sharestream_date")));
		ShareStreamInfo  sharestreaminfo=new ShareStreamInfo(sharestream_id,sharestream_no,sharestream_name,sharestream_in,sharestream_out,sharestream_date);
	//找到某个业务逻辑处理
	SSIServiceImpl  SSIService=SSIServiceImpl.getInstance();
	SSIService.updateSSI(sharestreaminfo);
	
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
