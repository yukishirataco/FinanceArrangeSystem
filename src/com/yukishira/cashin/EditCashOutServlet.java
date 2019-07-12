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

@WebServlet("/EditCashOutServlet")
public class EditCashOutServlet extends HttpServlet {
    public EditCashOutServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        queueSQLDatabase test = new queueSQLDatabase("familyfinancesystem", "homeman", "123456");
        Connection conn = test.connect();
        PreparedStatement pstmt = null;
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        try {
            long cashout_money = Integer.parseInt(request.getParameter("cashout-money"));
            int cashout_id = Integer.parseInt(request.getParameter("cashout-id"));
            String cashout_type = request.getParameter("cashout-type");
            String cashout_person = request.getParameter("cashout-person");
            String cashout_date = request.getParameter("cashout-date");
            String cashout_source = request.getParameter("cashout-source");
            String cashout_note = request.getParameter("cashout-note");
            //String docType = "<!DOCTYPE html> \n";
            String sql = "UPDATE `CashOutDB`" +
                    "SET `cashout_cash`=?,`cashout_type`=?,`cashout_person`=?,`cashout_date`=?,`cashout_source`=?,`cashout_note`=?" +
                    "WHERE `cashout_id`=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setLong(1, cashout_money);
            pstmt.setString(2, cashout_type);
            pstmt.setString(3, cashout_person);
            pstmt.setString(4, cashout_date);
            pstmt.setString(5, cashout_source);
            pstmt.setString(6, cashout_note);
            pstmt.setInt(7, cashout_id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            out.write("<script>");
            out.write("alert(\"你提交的数据有误！\");");
            out.write("</script>");
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        }
        response.sendRedirect(request.getContextPath() + "/query_cashout.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
