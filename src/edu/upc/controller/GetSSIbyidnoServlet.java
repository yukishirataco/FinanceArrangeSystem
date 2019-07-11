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
 * Servlet implementation class GetSSIbyidno
 */
@WebServlet("/GetSSIbyidnoServlet")
public class GetSSIbyidnoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSSIbyidnoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset = utf-8");
		request.setCharacterEncoding("UTF-8");
		int  sharestream_id=Integer.parseInt(request.getParameter("sharestream_id"));
		int  sharestream_no=Integer.parseInt(request.getParameter("sharestream_no"));
		SSIServiceImpl  SSIService=SSIServiceImpl.getInstance();
		ShareStreamInfo sharestreaminfo=SSIService.getSSIByidno(sharestream_id,sharestream_no);
		request.setAttribute("sharestreaminfo", sharestreaminfo);
		request.getRequestDispatcher("WEB-INF/SSI/update.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
