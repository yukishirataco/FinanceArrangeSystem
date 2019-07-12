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

@WebServlet("/EditCashInServlet")
public class EditCashInServlet extends HttpServlet {
    public EditCashInServlet() {
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
            long cashin_money = Integer.parseInt(request.getParameter("cashin-money"));
            int cashin_id = Integer.parseInt(request.getParameter("cashin-id"));
            String cashin_type = request.getParameter("cashin-type");
            String cashin_person = request.getParameter("cashin-person");
            String cashin_date = request.getParameter("cashin-date");
            String cashin_source = request.getParameter("cashin-source");
            String cashin_note = request.getParameter("cashin-note");
            //String docType = "<!DOCTYPE html> \n";
            String sql = "UPDATE `HomeDB`" +
                    "SET `cashin_cash`=?,`cashin_type`=?,`cashin_person`=?,`cashin_date`=?,`cashin_source`=?,`cashin_note`=?" +
                    "WHERE `cashin_id`=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setLong(1, cashin_money);
            pstmt.setString(2, cashin_type);
            pstmt.setString(3, cashin_person);
            pstmt.setString(4, cashin_date);
            pstmt.setString(5, cashin_source);
            pstmt.setString(6, cashin_note);
            pstmt.setInt(7, cashin_id);
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
        response.sendRedirect(request.getContextPath() + "/QueryCashIn.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
