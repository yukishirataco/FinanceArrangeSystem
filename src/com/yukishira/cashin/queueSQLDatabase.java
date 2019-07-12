package com.yukishira.cashin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class queueSQLDatabase {
    private String database;
    private String username;
    private String password;

    public queueSQLDatabase(String db, String uname, String passwd) {
        //构造函数
        database = db;
        username = uname;
        password = passwd;
    }

    public Connection connect() {
        Connection conn = null;
        //PreparedStatement pstmt = null;
        String url = "jdbc:mysql://localhost:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=UTC";
        //连接到database.
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;
    }
}
