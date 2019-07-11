package edu.upc.service;

import java.util.List;

import edu.upc.dao.SOIDaoImpl;
import edu.upc.dao.ShareOwnedInfo;
import edu.upc.dao.SharedOwnedInfoDao;

public class SOIServiceImpl implements SOIService {
	private  static  SOIServiceImpl instance=new SOIServiceImpl();

	private  SOIServiceImpl(){}
public static  SOIServiceImpl  getInstance()
{
	return  instance;
	}
	@Override
	public void insertSOI(ShareOwnedInfo shareownedinfo) {
		// TODO Auto-generated method stub
		SharedOwnedInfoDao  sharedownedinfoDao=new SOIDaoImpl();
		sharedownedinfoDao.insertSOI(shareownedinfo);
	}

	@Override
	public void updateSOI(ShareOwnedInfo shareownedinfo) {
		// TODO Auto-generated method stub
		SharedOwnedInfoDao  sharedownedinfoDao=new SOIDaoImpl();
		sharedownedinfoDao.updateSOI(shareownedinfo);
	}

	@Override
	public void deleteSOI(int shareowned_id,int shareowned_no) {
		// TODO Auto-generated method stub
		SharedOwnedInfoDao  sharedownedinfoDao=new SOIDaoImpl();
		sharedownedinfoDao.deleteSOI(shareowned_id,shareowned_no);
	}

	@Override
	public List<ShareOwnedInfo> getAllSOI() {
		// TODO Auto-generated method stub
		SharedOwnedInfoDao  sharedownedinfoDao=new SOIDaoImpl();
		return sharedownedinfoDao.getAllSOI();
	}

	@Override
	public List<ShareOwnedInfo>  getSOIBySOI_id(int  shareowned_id) {
		// TODO Auto-generated method stub
		SharedOwnedInfoDao  sharedownedinfoDao=new SOIDaoImpl();
		return sharedownedinfoDao.getSOIBySOI_id(shareowned_id);
	}
	@Override
	public ShareOwnedInfo  getSOIByidno(int  shareowned_id,int shareowned_no) {
		// TODO Auto-generated method stub
		SharedOwnedInfoDao  sharedownedinfoDao=new SOIDaoImpl();
		return sharedownedinfoDao.getSOIByidno(shareowned_id, shareowned_no);
	}
}
