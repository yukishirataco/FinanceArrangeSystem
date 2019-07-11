package edu.upc.dao;

import java.util.List;

public interface SharedOwnedInfoDao {
void  insertSOI(ShareOwnedInfo  shareownedinfo);
void  updateSOI(ShareOwnedInfo  shareownedinfo);
void deleteSOI(int shareowned_id,int shareowned_no);
List<ShareOwnedInfo> getAllSOI();
List<ShareOwnedInfo>  getSOIBySOI_id(int  shareowned_id);
ShareOwnedInfo  getSOIByidno(int  shareowned_id,int shareowned_no);
}
