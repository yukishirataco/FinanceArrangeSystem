package edu.upc.dao;

import edu.upc.utils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDaoImpl implements AdminDao {

    @Override
    public void insertUser(User user) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtils.getConnection();
            String sql = "insert into user values(?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getId());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getCard());
            pstmt.setDouble(4, user.getWage());
            pstmt.setString(5, user.getCall());
            pstmt.setInt(6, user.getAge());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeStatement(pstmt);
            DbUtils.closeConnection(conn);
        }
    }

    @Override
    public void deleteUser(String id) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtils.getConnection();
            String sql = "delete from user where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeStatement(pstmt);
            DbUtils.closeConnection(conn);
        }
    }

    @Override
    public void updateUser(User user) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtils.getConnection();
            String sql = "update user set password=?,card=?,wage=?,`call`=?,age=? where id=?";
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
    public List<User> getAllUsers() {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<User> users = new ArrayList<>();
        try {
            conn = DbUtils.getConnection();
            String sql = "select * from user";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getString("id"));
                user.setPassword(rs.getString("password"));
                user.setCard(rs.getString("card"));
                user.setWage(rs.getDouble("wage"));
                user.setCall(rs.getString("call"));
                user.setAge(rs.getInt("age"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeResultSet(rs);
            DbUtils.closeStatement(pstmt);
            DbUtils.closeConnection(conn);
        }
        return users;
    }

    @Override
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

    @Override
    public boolean adminLogin(String id, String password) {
        // TODO Auto-generated method stub
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DbUtils.getConnection();
            String sql = "select  *  from  admin where id=? and password=?";
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

}
