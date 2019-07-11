package edu.upc.controller;

import java.io.IOException;
import java.util.List;

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
@WebServlet("/GetSSIbySSI_idServlet")
public class GetSSIbySSI_idServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSSIbySSI_idServlet() {
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
	//找到某个业务逻辑处理
	SSIServiceImpl  SSIService=SSIServiceImpl.getInstance();
	List<ShareStreamInfo>  sharestreaminfos=SSIService.getSSIBySSI_id(sharestream_id);
	request.setAttribute("SSIids", sharestreaminfos);
	//3.找到某个视图响应
	request.getRequestDispatcher("/queryresult.jsp").forward(request, response);
	
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	this.doGet(request, response);
	}

}
