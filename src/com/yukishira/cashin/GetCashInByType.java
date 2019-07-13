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

@WebServlet("/GetCashInByType")
public class GetCashInByType extends HttpServlet {
    public GetCashInByType() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        queueSQLDatabase test = new queueSQLDatabase("familyfinancesystem", "homeman", "123456");
        Connection conn = test.connect();
        PreparedStatement pstmt = null;
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
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
                "        <th>收入编号</th>\n" +
                "        <th>收入金额</th>\n" +
                "        <th>收入类型</th>\n" +
                "        <th>收入者</th>\n" +
                "        <th>收入日期</th>\n" +
                "        <th>收入来源</th>\n" +
                "        <th>相关备注</th>\n" +
                "    </tr>\n" +
                "    </thead>\n" +
                "    <tbody>");
        String queryid = request.getParameter("type");
        try {
            String sql = "SELECT * FROM HomeDB WHERE `cashin_type`=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, queryid);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                out.print("<tr>");
                out.print("<td><font color=\"white\">" + rs.getInt("cashin_id") + "</td>");
                out.print("<td><font color=\"white\">" + rs.getInt("cashin_cash") + "</td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashin_type") + "</td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashin_person") + "</td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashin_date") + "</td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashin_source") + "</td>");
                out.print("<td><font color=\"white\">" + rs.getString("cashin_note") + "</td>");
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
