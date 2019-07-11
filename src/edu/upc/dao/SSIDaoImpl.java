package edu.upc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import edu.upc.utils.DbUtils;

public class SSIDaoImpl implements SharedStreamInfoDao {

	@Override
	public void  insertSSI(ShareStreamInfo  sharestreaminfo) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
				try {
			conn=DbUtils.getConnection();	
				String  sql="insert  into  sharestreaminfo(sharestream_id" //账号	
						+ ",sharestream_no"//代码	
						+ ",sharestream_name"//股票名称
						+ ",sharestream_in"//买入
						+ ",sharestream_out"//卖出
						+ ",sharestream_date)  "//日期
						+ "values(?,?,?,?,?,?)";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, sharestreaminfo.getSharestream_id());
				pstmt.setInt(2, sharestreaminfo.getSharestream_no());
				pstmt.setString(3, sharestreaminfo.getSharestream_name());
				pstmt.setInt(4, sharestreaminfo.getSharestream_in());
				pstmt.setInt(5, sharestreaminfo.getSharestream_out());
				//DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");
				//String date = df.format(sharestreaminfo.getSharestream_date());
				//pstmt.setString(6, date);
				Timestamp t = new Timestamp(sharestreaminfo.getSharestream_date().getTime());
				pstmt.setTimestamp(6, t);
				//pstmt.setDate(6, sharestreaminfo.getSharestream_date());
				pstmt.executeUpdate();//插入到数据库
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally
				{
					DbUtils.closeStatement(pstmt);
					DbUtils.closeConnection(conn);
				}
	}

	@Override
	public void  updateSSI(ShareStreamInfo  sharestreaminfo) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
				try {
			conn=DbUtils.getConnection();	
				String  sql="update  sharestreaminfo  set sharestream_name=?,sharestream_in=?,sharestream_out=?,sharestream_date=? where sharestream_id  = ? and sharestream_no = ?";
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setInt(5, sharestreaminfo.getSharestream_id());
				pstmt.setInt(6, sharestreaminfo.getSharestream_no());
				pstmt.setString(1, sharestreaminfo.getSharestream_name());
				pstmt.setInt(2, sharestreaminfo.getSharestream_in());
				pstmt.setInt(3, sharestreaminfo.getSharestream_out());
				//pstmt.setDate(4, sharestreaminfo.getSharestream_date());
				Timestamp t = new Timestamp(sharestreaminfo.getSharestream_date().getTime());
				pstmt.setTimestamp(4, t);
				//DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");
				//String date = df.format(sharestreaminfo.getSharestream_date());
				//pstmt.setString(4, date);
				pstmt.executeUpdate();//
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally
				{
					DbUtils.closeStatement(pstmt);
					DbUtils.closeConnection(conn);
				}
	}

	@Override
	public void deleteSSI(int sharestream_id,int sharestream_no) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
				try {
			conn=DbUtils.getConnection();	
				String  sql="delete  from  sharestreaminfo where  sharestream_id=? and sharestream_no = ?;";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, sharestream_id);
				pstmt.setInt(2, sharestream_no);
				pstmt.executeUpdate();//插入到数据库
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally
				{
					DbUtils.closeStatement(pstmt);
					DbUtils.closeConnection(conn);
				}
	}

	@Override
	public List<ShareStreamInfo> getAllSSI() {
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<ShareStreamInfo>   sharestreaminfos=new ArrayList<>();
		try {

			//2.连接数据库		
			conn=DbUtils.getConnection();
			// System.out.println("ok");
	//3.	操作数据库
			String  sql="select  *   from  sharestreaminfo ";
		  pstmt=conn.prepareStatement(sql);
		

		rs=pstmt.executeQuery();
		while(rs.next())
		{
			ShareStreamInfo  sharestreaminfo=new ShareStreamInfo();
			sharestreaminfo.setSharestream_id(rs.getInt("sharestream_id"));
			sharestreaminfo.setSharestream_no(rs.getInt("sharestream_no"));
			sharestreaminfo.setSharestream_name(rs.getString("sharestream_name"));
			sharestreaminfo.setSharestream_in(rs.getInt("sharestream_in"));
			sharestreaminfo.setSharestream_out(rs.getInt("sharestream_out"));
			//sharestreaminfo.setSharestream_date(rs.getDate("sharestream_date"));
			Timestamp t = rs.getTimestamp("sharestream_date");
			sharestreaminfo.setSharestream_date(t);
			sharestreaminfos.add(sharestreaminfo);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.关闭数据库
	DbUtils.closeResultSet(rs);
	DbUtils.closeStatement(pstmt);
	DbUtils.closeConnection(conn);
	}
		
	
		return sharestreaminfos;
	}

	@Override
	public List<ShareStreamInfo> getSSIBySSI_id(int sharestream_id){
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<ShareStreamInfo>   sharestreaminfos=new ArrayList<>();
		try {

			//2.连接数据库		
			conn=DbUtils.getConnection();
			// System.out.println("ok");
	//3.	操作数据库
			String  sql="select  *   from  sharestreaminfo  where  sharestream_id=?";
		  pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, sharestream_id);

		rs=pstmt.executeQuery();
		while(rs.next())
		{
			ShareStreamInfo  sharestreaminfo=new ShareStreamInfo();
			sharestreaminfo.setSharestream_id(rs.getInt("sharestream_id"));
			sharestreaminfo.setSharestream_no(rs.getInt("sharestream_no"));
			sharestreaminfo.setSharestream_name(rs.getString("sharestream_name"));
			sharestreaminfo.setSharestream_in(rs.getInt("sharestream_in"));
			sharestreaminfo.setSharestream_out(rs.getInt("sharestream_out"));
			
			Timestamp t = rs.getTimestamp("sharestream_date");
			sharestreaminfo.setSharestream_date(t);
			//sharestreaminfo.setSharestream_date(rs.getDate("sharestream_date"));
			sharestreaminfos.add(sharestreaminfo);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.关闭数据库
	DbUtils.closeResultSet(rs);
	DbUtils.closeStatement(pstmt);
	DbUtils.closeConnection(conn);
	}
		
		
		return sharestreaminfos;
	}
	public ShareStreamInfo  getSSIByidno(int  sharestream_id,int sharestream_no) {
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		ShareStreamInfo  sharestreaminfo=new ShareStreamInfo();
		try {

			//2.连接数据库		
			conn=DbUtils.getConnection();
			// System.out.println("ok");
	//3.	操作数据库
			String  sql="select  *   from  sharestreaminfo  where  sharestream_id= ? and sharestream_no = ? ;";
		  pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, sharestream_id);
		pstmt.setInt(2, sharestream_no);
		rs=pstmt.executeQuery();
		while(rs.next())
		{
			sharestreaminfo.setSharestream_id(rs.getInt("sharestream_id"));
			sharestreaminfo.setSharestream_no(rs.getInt("sharestream_no"));
			sharestreaminfo.setSharestream_name(rs.getString("sharestream_name"));
			sharestreaminfo.setSharestream_in(rs.getInt("sharestream_in"));
			sharestreaminfo.setSharestream_out(rs.getInt("sharestream_out"));
			//sharestreaminfo.setSharestream_date(rs.getDate("sharestream_date"));
			Timestamp t = rs.getTimestamp("sharestream_date");
			sharestreaminfo.setSharestream_date(t);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
	//4.关闭数据库
			DbUtils.closeResultSet(rs);
			DbUtils.closeStatement(pstmt);
			DbUtils.closeConnection(conn);
		
	}
		return sharestreaminfo;
}}
