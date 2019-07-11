package edu.upc.service;

import java.util.List;


import edu.upc.dao.ShareOwnedInfo;

public interface SOIService {
	void  insertSOI(ShareOwnedInfo  shareownedinfo);
	void  updateSOI(ShareOwnedInfo  shareownedinfo);
	void deleteSOI(int shareowned_id,int shareowned_no);
	List<ShareOwnedInfo> getAllSOI();
	List<ShareOwnedInfo>  getSOIBySOI_id(int  shareowned_id);
	ShareOwnedInfo  getSOIByidno(int  shareowned_id,int shareowned_no);
}
