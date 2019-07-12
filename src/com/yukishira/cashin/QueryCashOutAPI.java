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

@WebServlet("/QueryCashOutAPI")
public class QueryCashOutAPI extends HttpServlet {
    public QueryCashOutAPI() {
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
            String sql = "SELECT * FROM CashOutDB WHERE cashout_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, queryid);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                int cashout_cost = rs.getInt("cashout_cash");
                String cashout_type = rs.getString("cashout_type");
                String cashout_person = rs.getString("cashout_person");
                String cashout_date = rs.getString("cashout_date");
                String cashout_source = rs.getString("cashout_source");
                String cashout_note = rs.getString("cashout_note");
                out.write("{\n" +
                        "    \"status_code\": 200,\n" +
                        "    \"cashout_id\":\"" + queryid + "\",\n" +
                        "    \"cashout_cost\":\"" + cashout_cost + "\",\n" +
                        "    \"cashout_type\":\"" + cashout_type + "\",\n" +
                        "    \"cashout_person\":\"" + cashout_person + "\",\n" +
                        "    \"cashout_date\":\"" + cashout_date + "\",\n" +
                        "    \"cashout_source\":\"" + cashout_source + "\",\n" +
                        "    \"cashout_note\":\"" + cashout_note + "\"\n" +
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
