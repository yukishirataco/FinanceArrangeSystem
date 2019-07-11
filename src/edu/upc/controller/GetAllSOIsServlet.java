package edu.upc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import edu.upc.dao.ShareOwnedInfo;
import edu.upc.service.SOIServiceImpl;

/**
 * Servlet implementation class GetAllDeptsServlet
 */
@WebServlet("/GetAllSOIsServlet")
public class GetAllSOIsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllSOIsServlet() {
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
		SOIServiceImpl  SOIService=SOIServiceImpl.getInstance();
		List<ShareOwnedInfo>  shareownedinfos=SOIService.getAllSOI();
	request.setAttribute("SOIs", shareownedinfos);
	
	request.getRequestDispatcher("WEB-INF/SOI/main.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	this.doGet(request, response);
	}

}
