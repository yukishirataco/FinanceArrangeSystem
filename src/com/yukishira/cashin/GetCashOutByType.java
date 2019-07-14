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
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/GetCashOutByType")
public class GetCashOutByType extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        //设定字符集，防止乱码
        queueSQLDatabase test = new queueSQLDatabase("familyfinancesystem", "root", "");
        Connection conn = test.connect();
        PreparedStatement pstmt;
        PrintWriter out = response.getWriter();
        String queryid = request.getParameter("type");
        out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n" +
                "<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n" +
                "<link href=\"css/glyphfonts.css\" rel=\"stylesheet\">\n" +
                "<script src=\"js/jquery.min.js\"></script>");
        out.println("<body text=\"white\">\n" +
                "<style>\n" +
                "    body {\n" +
                "        background-color: #494a5f;\n" +
                "        color: white;\n" +
                "    }\n" +
                "</style>");
        out.println("<h2><center>查询结果</center></h2>");
        out.println("<table class=\"table table-hover\" border=\"1\">\n" +
                "    <thead class=\"thead-dark\">\n" +
                "    <tr>\n" +
                "        <th>支出编号</th>\n" +
                "        <th>支出金额</th>\n" +
                "        <th>支出类型</th>\n" +
                "        <th>支出者</th>\n" +
                "        <th>支出日期</th>\n" +
                "        <th>支出用途</th>\n" +
                "        <th>相关备注</th>\n" +
                "    </tr>\n" +
                "    </thead>\n" +
                "    <tbody>" +
                "<br>");
        try {
            String sql = "SELECT * FROM cashoutdb WHERE cashout_type=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, queryid);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                out.print("<tr>");
                out.print("<td><font color=\"white\">" + rs.getInt("cashout_id") + "</font></font></td>");
                out.print("<td><font color=\"white\">" + rs.getInt("cashout_cash") + "</font></font></td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashout_type") + "</font></font></td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashout_person") + "</font></font></td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashout_date") + "</font></font></td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashout_source") + "</font></font></td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashout_note") + "</font></font></td>");
                out.print("</tr>");
            }
            out.print("</table>\n</tbody>");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
