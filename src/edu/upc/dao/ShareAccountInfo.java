package edu.upc.dao;

public class ShareAccountInfo {
private int shareaccount_id;//账号
private String shareaccount_pwd;//密码
private String shareaccount_num;//手机号
private String shareaccount_card;//银行卡
private String shareaccount_company;//开户公司

public ShareAccountInfo() {
	super();
	// TODO Auto-generated constructor stub
}

public ShareAccountInfo(int shareaccount_id,String shareaccount_pwd,String shareaccount_num,String shareaccount_card,String shareaccount_company)
{
	super();
	this.shareaccount_id = shareaccount_id;
	this.shareaccount_pwd = shareaccount_pwd;
	this.shareaccount_num = shareaccount_num;
	this.shareaccount_card = shareaccount_card;
	this.shareaccount_company = shareaccount_company;
	
}

public int getShareaccount_id() {
	return shareaccount_id;
}

public void setShareaccount_id(int shareaccount_id) {
	this.shareaccount_id = shareaccount_id;
}

public String getShareaccount_pwd() {
	return shareaccount_pwd;
}

public void setShareaccount_pwd(String shareaccount_pwd) {
	this.shareaccount_pwd = shareaccount_pwd;
}

public String getShareaccount_num() {
	return shareaccount_num;
}

public void setShareaccount_num(String shareaccount_num) {
	this.shareaccount_num = shareaccount_num;
}

public String getShareaccount_card() {
	return shareaccount_card;
}

public void setShareaccount_card(String shareaccount_card) {
	this.shareaccount_card = shareaccount_card;
}

public String getShareaccount_company() {
	return shareaccount_company;
}

public void setShareaccount_company(String shareaccount_company) {
	this.shareaccount_company = shareaccount_company;
}



}
