package edu.upc.dao;

import java.util.List;

public interface ShareAccountInfoDao {
    void insertShare(ShareAccountInfo share);
    void updateShare(ShareAccountInfo share);
    void deleteShare(int shareaccount_id);
    List<ShareAccountInfo> getAllShare();
    ShareAccountInfo getShareById(int shareaccount_id);
	
}
