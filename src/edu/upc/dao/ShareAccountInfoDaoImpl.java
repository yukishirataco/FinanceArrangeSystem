package edu.upc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.upc.utils.DbUtils;

public class ShareAccountInfoDaoImpl implements ShareAccountInfoDao {

	@Override
	public void insertShare(ShareAccountInfo share) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
				try {
			conn=DbUtils.getConnection();	
				String  sql="insert  into  shareaccount_company(shareaccount_id," //账号
						+ "shareaccount_pwd,"//密码
						+ "shareaccount_num,"//手机号
						+ "shareaccount_card,"//银行卡
						+ "shareaccount_company)  "//开户公司
						+ "values(?,?,?,?,?)";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, share.getShareaccount_id());
				pstmt.setString(2, share.getShareaccount_pwd());
				pstmt.setString(3, share.getShareaccount_num());
				pstmt.setString(4, share.getShareaccount_card());
				pstmt.setString(5, share.getShareaccount_company());
				
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
	public void updateShare(ShareAccountInfo share) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
				try {
			conn=DbUtils.getConnection();	
				String  sql="update  shareaccount_company  set shareaccount_pwd=?,shareaccount_num=?,shareaccount_card=?,shareaccount_company=? where shareaccount_id=?";
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setString(1, share.getShareaccount_pwd());
				pstmt.setString(2, share.getShareaccount_num());
				pstmt.setString(3, share.getShareaccount_card());
				pstmt.setString(4, share.getShareaccount_company());
				pstmt.setInt(5, share.getShareaccount_id());
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
	public void deleteShare(int shareaccount_id) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
				try {
			    conn=DbUtils.getConnection();	
				String  sql="delete from shareaccount_company where shareaccount_id=?";
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setInt(1, shareaccount_id);
				pstmt.execute();
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
	public List<ShareAccountInfo> getAllShare() {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<ShareAccountInfo>   shares=new ArrayList<>();
		try {

			//2.连接数据库		
			conn=DbUtils.getConnection();
	        //3.操作数据库
			String  sql="select  *   from  shareaccount_company ";
		    pstmt=conn.prepareStatement(sql);
		

		    rs=pstmt.executeQuery();
		while(rs.next())
		{
			ShareAccountInfo  share=new ShareAccountInfo();
            share.setShareaccount_id(rs.getInt("shareaccount_id"));
            share.setShareaccount_pwd(rs.getString("shareaccount_pwd"));
            share.setShareaccount_num(rs.getString("shareaccount_num"));
            share.setShareaccount_card(rs.getString("shareaccount_card"));
            share.setShareaccount_company(rs.getString("shareaccount_company"));
            shares.add(share);

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
		
	
		return shares;
	}

	@Override
	public ShareAccountInfo getShareById(int shareaccount_id) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		ShareAccountInfo  share=new ShareAccountInfo();
		try {

			//2.连接数据库		
			conn=DbUtils.getConnection();
			// System.out.println("ok");
	//3.	操作数据库
			String  sql="select  *   from  shareaccount_company  where  shareaccount_id=?";
		  pstmt=conn.prepareStatement(sql);
		  pstmt.setInt(1, shareaccount_id);

		rs=pstmt.executeQuery();
		while(rs.next())
		{
			share.setShareaccount_id(rs.getInt("shareaccount_id"));
			share.setShareaccount_pwd(rs.getString("shareaccount_pwd"));
			share.setShareaccount_num(rs.getString("shareaccount_num"));
			share.setShareaccount_card(rs.getString("shareaccount_card"));
			share.setShareaccount_company(rs.getString("shareaccount_company"));

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
		
		
		return share;
	
	}

}
