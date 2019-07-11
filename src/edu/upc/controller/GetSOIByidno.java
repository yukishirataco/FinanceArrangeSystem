package edu.upc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.upc.dao.ShareOwnedInfo;
import edu.upc.dao.ShareOwnedInfo;
import edu.upc.service.SOIServiceImpl;


/**
 * Servlet implementation class GetSOIByidno
 */
@WebServlet("/GetSOIByidno")
public class GetSOIByidno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSOIByidno() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset = utf-8");
		request.setCharacterEncoding("UTF-8");
		int  shareowned_id=Integer.parseInt(request.getParameter("shareowned_id"));
		int  shareowned_no=Integer.parseInt(request.getParameter("shareowned_no"));
		
		SOIServiceImpl  SOIService=SOIServiceImpl.getInstance();
		ShareOwnedInfo  shareownedinfo=SOIService.getSOIByidno(shareowned_id, shareowned_no);
		
		request.setAttribute("shareownedinfo", shareownedinfo);
		
		request.getRequestDispatcher("WEB-INF/SOI/update.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
