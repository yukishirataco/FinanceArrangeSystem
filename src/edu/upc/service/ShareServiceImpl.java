package edu.upc.service;

import java.util.List;

import edu.upc.dao.ShareAccountInfo;
import edu.upc.dao.ShareAccountInfoDao;
import edu.upc.dao.ShareAccountInfoDaoImpl;

public class ShareServiceImpl implements ShareAccountInfoService{
	private  static  ShareServiceImpl instance=new ShareServiceImpl();
	private  ShareServiceImpl(){}
	public static  ShareServiceImpl  getInstance()
	{
		return  instance;
	}
	@Override
	public void insertShare(ShareAccountInfo share) {
		// TODO Auto-generated method stub
		ShareAccountInfoDao  sharedao=new ShareAccountInfoDaoImpl();
		sharedao.insertShare(share);

	}

	@Override
	public void updateShare(ShareAccountInfo share) {
		// TODO Auto-generated method stub
		ShareAccountInfoDao  sharedao=new ShareAccountInfoDaoImpl();
		sharedao.updateShare(share);
		
	}

	@Override
	public void deleteShare(int shareaccount_id) {
		// TODO Auto-generated method stub
		ShareAccountInfoDao  sharedao=new ShareAccountInfoDaoImpl();
		sharedao.deleteShare(shareaccount_id);
	}

	@Override
	public List<ShareAccountInfo> getAllShare() {
		// TODO Auto-generated method stub
		ShareAccountInfoDao  sharedao=new ShareAccountInfoDaoImpl();
		return sharedao.getAllShare();
		
	}

	@Override
	public ShareAccountInfo getShareById(int shareaccount_id) {
		// TODO Auto-generated method stub
		ShareAccountInfoDao  sharedao=new ShareAccountInfoDaoImpl();
		return sharedao.getShareById(shareaccount_id);

	}

}
	

