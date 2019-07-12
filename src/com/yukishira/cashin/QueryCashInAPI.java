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

//import java.sql.ResultSet;

@WebServlet("/QueryCashInAPI")
public class QueryCashInAPI extends HttpServlet {
    public QueryCashInAPI() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        //设定字符集，防止乱码
        queueSQLDatabase test = new queueSQLDatabase("familyfinancesystem", "homeman", "123456");
        Connection conn = test.connect();
        PreparedStatement pstmt;
        PrintWriter out = response.getWriter();

        try {
            int queryid = Integer.parseInt(request.getParameter("id"));
            String sql = "SELECT * FROM HomeDB WHERE cashin_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, queryid);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                int costin_cost = rs.getInt("cashin_cash");
                String costin_type = rs.getString("cashin_type");
                String costin_person = rs.getString("cashin_person");
                String costin_date = rs.getString("cashin_date");
                String costin_source = rs.getString("cashin_source");
                String costin_note = rs.getString("cashin_note");
                out.write("{\n" +
                        "    \"status_code\": 200,\n" +
                        "    \"cashin_id\":\"" + queryid + "\",\n" +
                        "    \"cashin_cost\":\"" + costin_cost + "\",\n" +
                        "    \"cashin_type\":\"" + costin_type + "\",\n" +
                        "    \"cashin_person\":\"" + costin_person + "\",\n" +
                        "    \"cashin_date\":\"" + costin_date + "\",\n" +
                        "    \"cashin_source\":\"" + costin_source + "\",\n" +
                        "    \"cashin_note\":\"" + costin_note + "\"\n" +
                        "}");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            out.write("{\"status_code\": 500}");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            out.write("{\"status_code\": 500,\"text\":\"你输入的数字格式不正确！\"}");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
