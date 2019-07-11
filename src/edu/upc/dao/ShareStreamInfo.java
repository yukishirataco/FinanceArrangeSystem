package edu.upc.dao;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

//import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;;

//ÊµÌåÀà
public class ShareStreamInfo {


private  Integer  sharestream_id;
private  Integer sharestream_no;
private  String  sharestream_name;
private  Integer sharestream_in;
private Integer sharestream_out;
private Timestamp sharestream_date;




public ShareStreamInfo() {
	super();
	// TODO Auto-generated constructor stub
}
public ShareStreamInfo(Integer sharestream_id, Integer sharestream_no, String sharestream_name, Integer sharestream_in,
		Integer sharestream_out, Timestamp sharestream_date) {
	super();
	this.sharestream_id = sharestream_id;
	this.sharestream_no = sharestream_no;
	this.sharestream_name = sharestream_name;
	this.sharestream_in = sharestream_in;
	this.sharestream_out = sharestream_out;
	this.sharestream_date = sharestream_date;
}


public Integer getSharestream_id() {
	return sharestream_id;
}


public void setSharestream_id(Integer sharestream_id) {
	this.sharestream_id = sharestream_id;
}


public Integer getSharestream_no() {
	return sharestream_no;
}


public void setSharestream_no(Integer sharestream_no) {
	this.sharestream_no = sharestream_no;
}


public String getSharestream_name() {
	return sharestream_name;
}


public void setSharestream_name(String sharestream_name) {
	this.sharestream_name = sharestream_name;
}


public Integer getSharestream_in() {
	return sharestream_in;
}


public void setSharestream_in(Integer sharestream_in) {
	this.sharestream_in = sharestream_in;
}


public Integer getSharestream_out() {
	return sharestream_out;
}


public void setSharestream_out(Integer sharestream_out) {
	this.sharestream_out = sharestream_out;
}


public Timestamp getSharestream_date() {
	return sharestream_date;
}


public void setSharestream_date(Timestamp t) {
	this.sharestream_date = t;
}
@Override
public String toString() {
	return "ShareStreamInfo [sharestream_id=" + sharestream_id + ", sharestream_no=" + sharestream_no
			+ ", sharestream_name=" + sharestream_name + ", sharestream_in=" + sharestream_in + ", sharestream_out="
			+ sharestream_out + ", sharestream_date=" + sharestream_date + "]";
}

}
