package edu.upc.utils;

import java.sql.*;

public class DbUtils {
private  static  final  String URL="jdbc:mysql://localhost:3306/familyfinancesystem?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
    private static final String USERNAME = "homeman";
	private static final String PASSWORD = "123456";

private  DbUtils(){}

static{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public static  Connection  getConnection()
{
	Connection  conn=null;
	try {
		conn=DriverManager.getConnection(URL, USERNAME, PASSWORD);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return  conn;
	}

public  static  void closeConnection(Connection conn)
{
	try {
		if(conn!=null)
		{
		conn.close();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

public  static  void  closeResultSet(ResultSet rs)
{
	try {
		if(rs!=null)
		{
		rs.close();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
public  static  void  closeStatement(Statement  stmt)
{
	try {
		if(stmt!=null)
		{
			stmt.close();
		}
	}
		
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

}
