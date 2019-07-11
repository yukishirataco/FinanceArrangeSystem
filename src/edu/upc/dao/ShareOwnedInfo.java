package edu.upc.dao;
// µÃÂ¿‡
public class ShareOwnedInfo {



private  Integer  shareowned_id;
private  Integer shareowned_no;
private  String  shareowned_name;
private  double shareowned_begin;
private double shareowned_end;
private Integer shareowned_amount;


public ShareOwnedInfo() {
	super();
	// TODO Auto-generated constructor stub
}


public ShareOwnedInfo(Integer shareowned_id, Integer shareowned_no, String shareowned_name, double shareowned_begin,
		double shareowned_end, Integer shareowned_amount) {
	super();
	this.shareowned_id = shareowned_id;
	this.shareowned_no = shareowned_no;
	this.shareowned_name = shareowned_name;
	this.shareowned_begin = shareowned_begin;
	this.shareowned_end = shareowned_end;
	this.shareowned_amount = shareowned_amount;
}

public Integer getShareowned_id() {
	return shareowned_id;
}


public void setShareowned_id(Integer shareowned_id) {
	this.shareowned_id = shareowned_id;
}


public Integer getShareowned_no() {
	return shareowned_no;
}


public void setShareowned_no(Integer shareowned_no) {
	this.shareowned_no = shareowned_no;
}


public String getShareowned_name() {
	return shareowned_name;
}


public void setShareowned_name(String shareowned_name) {
	this.shareowned_name = shareowned_name;
}


public double getShareowned_begin() {
	return shareowned_begin;
}


public void setShareowned_begin(double shareowned_begin) {
	this.shareowned_begin = shareowned_begin;
}


public double getShareowned_end() {
	return shareowned_end;
}


public void setShareowned_end(double shareowned_end) {
	this.shareowned_end = shareowned_end;
}


public Integer getShareowned_amount() {
	return shareowned_amount;
}


public void setShareowned_amount(Integer shareowned_amount) {
	this.shareowned_amount = shareowned_amount;
}


@Override
	public String toString() {
		return "ShareOwnedInfo [shareowned_id=" + shareowned_id + ", shareowned_no=" + shareowned_no
				+ ", shareowned_name=" + shareowned_name + ", shareowned_begin=" + shareowned_begin
				+ ", shareowned_end=" + shareowned_end + ", shareowned_amount=" + shareowned_amount + "]";
	}

}
