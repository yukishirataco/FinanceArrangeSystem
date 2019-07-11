package edu.upc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import edu.upc.dao.ShareStreamInfo;
import edu.upc.service.SSIServiceImpl;

/**
 * Servlet implementation class GetAllDeptsServlet
 */
@WebServlet("/GetAllSSIsServlet")
public class GetAllSSIsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllSSIsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		SSIServiceImpl  SSIService=SSIServiceImpl.getInstance();
		List<ShareStreamInfo>  sharestreaminfos=SSIService.getAllSSI();
	request.setAttribute("SSIs", sharestreaminfos);
	
	request.getRequestDispatcher("WEB-INF/SSI/main.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	this.doGet(request, response);
	}

}
