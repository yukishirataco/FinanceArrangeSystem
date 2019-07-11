package edu.upc.service;

import java.util.List;


import edu.upc.dao.ShareStreamInfo;

public interface SSIService {
	void  insertSSI(ShareStreamInfo  sharestreaminfo);
	void  updateSSI(ShareStreamInfo  sharestreaminfo);
	void deleteSSI(int sharestream_id,int sharestream_no);
	List<ShareStreamInfo> getAllSSI();
	List<ShareStreamInfo> getSSIBySSI_id(int sharestream_id);
	ShareStreamInfo  getSSIByidno(int  sharestream_id,int sharestream_no);
}
