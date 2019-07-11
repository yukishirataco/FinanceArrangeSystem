package edu.upc.service;

import java.util.List;

import edu.upc.dao.SSIDaoImpl;
import edu.upc.dao.ShareStreamInfo;
import edu.upc.dao.SharedStreamInfoDao;

public class SSIServiceImpl implements SSIService {
	private  static  SSIServiceImpl instance=new SSIServiceImpl();

	private  SSIServiceImpl(){}
public static  SSIServiceImpl  getInstance()
{
	return  instance;
	}
	@Override
	public void insertSSI(ShareStreamInfo sharestreaminfo) {
		// TODO Auto-generated method stub
		SharedStreamInfoDao  sharedstreaminfoDao=new SSIDaoImpl();
		sharedstreaminfoDao.insertSSI(sharestreaminfo);
	}

	@Override
	public void updateSSI(ShareStreamInfo sharestreaminfo) {
		// TODO Auto-generated method stub
		SharedStreamInfoDao  sharedstreaminfoDao=new SSIDaoImpl();
		sharedstreaminfoDao.updateSSI(sharestreaminfo);
	}

	@Override
	public void deleteSSI(int sharestream_id, int sharestream_no) {
		// TODO Auto-generated method stub
		SharedStreamInfoDao  sharedstreaminfoDao=new SSIDaoImpl();
		sharedstreaminfoDao.deleteSSI(sharestream_id,sharestream_no);
	}

	@Override
	public List<ShareStreamInfo> getAllSSI() {
		// TODO Auto-generated method stub
		SharedStreamInfoDao  sharedstreaminfoDao=new SSIDaoImpl();
		return sharedstreaminfoDao.getAllSSI();
	}

	@Override
	public List<ShareStreamInfo> getSSIBySSI_id(int sharestream_id) {
		// TODO Auto-generated method stub
		SharedStreamInfoDao  sharedstreaminfoDao=new SSIDaoImpl();
		return sharedstreaminfoDao.getSSIBySSI_id(sharestream_id);
	}

	@Override
	public ShareStreamInfo getSSIByidno(int sharestream_id, int sharestream_no) {
		// TODO Auto-generated method stub
		SharedStreamInfoDao  sharedstreaminfoDao=new SSIDaoImpl();
		return sharedstreaminfoDao.getSSIByidno(sharestream_id,sharestream_no);
	}

}
