package edu.upc.service;

import java.util.List;

import edu.upc.dao.ShareAccountInfo;

public interface ShareAccountInfoService {
    void insertShare(ShareAccountInfo share);
    void updateShare(ShareAccountInfo share);
    void deleteShare(int shareaccount_id);
    List<ShareAccountInfo> getAllShare();
    ShareAccountInfo getShareById(int shareaccount_id);
	
}
