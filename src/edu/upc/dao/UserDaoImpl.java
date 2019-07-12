package edu.upc.dao;

import edu.upc.utils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

    @Override
    public void updateInfo(User user) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtils.getConnection();
            String sql = "update user set password=? ,card=? ,wage=? ,`call`=? ,age= ? where id=?;";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getPassword());
            pstmt.setString(6, user.getId());
            pstmt.setString(2, user.getCard());
            pstmt.setDouble(3, user.getWage());
            pstmt.setString(4, user.getCall());
            pstmt.setInt(5, user.getAge());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeStatement(pstmt);
            DbUtils.closeConnection(conn);
        }
    }

    @Override
    public void updateInfo2(User user) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtils.getConnection();
            String sql = "update user set password=? where id=?;";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getPassword());
            pstmt.setString(2, user.getId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeStatement(pstmt);
            DbUtils.closeConnection(conn);
        }
    }

    @Override
    public boolean userLogin(String id, String password) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DbUtils.getConnection();
            String sql = "select  *  from  user where id=? and password=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return true;
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DbUtils.closeResultSet(rs);
            DbUtils.closeStatement(pstmt);
            DbUtils.closeConnection(conn);
        }
        return false;
    }

    @Override
    public int userRegister(String id, String password, String card, double wage, String call, Integer age) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        int rs = 0;

        try {
            conn = DbUtils.getConnection();
            String sql = "insert into user(id,password,card,wage,`call`,age)" + "values(?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setObject(1, id);
            pstmt.setObject(2, password);
            pstmt.setObject(3, card);
            pstmt.setObject(4, wage);
            pstmt.setObject(5, call);
            pstmt.setObject(6, age);
            rs = pstmt.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DbUtils.closeStatement(pstmt);
            DbUtils.closeConnection(conn);
        }
        return rs;
    }

    public User getUserById(String id) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        User user = new User();
        try {
            conn = DbUtils.getConnection();
            String sql = "select * from user where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                user.setId(rs.getString("id"));
                user.setPassword(rs.getString("password"));
                user.setCard(rs.getString("card"));
                user.setWage(rs.getDouble("wage"));
                user.setCall(rs.getString("call"));
                user.setAge(rs.getInt("age"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeResultSet(rs);
            DbUtils.closeStatement(pstmt);
            DbUtils.closeConnection(conn);
        }
        return user;
    }
}
