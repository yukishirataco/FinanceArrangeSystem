package com.yukishira.cashin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//import java.sql.ResultSet;

@WebServlet("/AddCashInServlet")
public class AddCashInServlet extends HttpServlet {
    public AddCashInServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        queueSQLDatabase test = new queueSQLDatabase("familyfinancesystem", "root", "");
        Connection conn = test.connect();
        PreparedStatement pstmt = null;
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        try {
            int cashin_money = Integer.parseInt(request.getParameter("cashin-money"));
            String cashin_type = request.getParameter("cashin-type");
            String cashin_person = request.getParameter("cashin-person");
            String cashin_date = request.getParameter("cashin-date");
            String cashin_source = request.getParameter("cashin-source");
            String cashin_note = request.getParameter("cashin-note");
            //String docType = "<!DOCTYPE html> \n";
            String sql = "INSERT INTO HomeDB" +
                    "(cashin_cash,cashin_type,cashin_person,cashin_date,cashin_source,cashin_note) " +
                    "VALUES" +
                    "(?,?,?,?,?,?);";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, cashin_money);
            pstmt.setString(2, cashin_type);
            pstmt.setString(3, cashin_person);
            pstmt.setString(4, cashin_date);
            pstmt.setString(5, cashin_source);
            pstmt.setString(6, cashin_note);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        }
        request.getRequestDispatcher("/QueryCashIn.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}