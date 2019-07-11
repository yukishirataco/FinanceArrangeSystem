package edu.upc.controller;

import java.io.IOException;
import java.util.List;

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
@WebServlet("/GetSOIbySOI_idServlet")
public class GetSOIbySOI_idServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSOIbySOI_idServlet() {
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
	//找到某个业务逻辑处理
	SOIServiceImpl  SOIService=SOIServiceImpl.getInstance();
	List<ShareOwnedInfo>  shareownedinfos=SOIService.getSOIBySOI_id(shareowned_id);
	request.setAttribute("shareownedinfos", shareownedinfos);
	//3.找到某个视图响应
	request.getRequestDispatcher("search.jsp").forward(request, response);
	
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	this.doGet(request, response);
	}

}
