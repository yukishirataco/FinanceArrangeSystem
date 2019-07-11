package edu.upc.dao;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String date = "2018/07/09 13:23:24";
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		df.setLenient(false);
		Timestamp t;
		try {
			t = new Timestamp(df.parse(date).getTime());
		ShareStreamInfo shareownedinfo = new ShareStreamInfo(434,34242, "sadhsa", 435435, 453, t);
		SharedStreamInfoDao SSIdao = new SSIDaoImpl();
		SSIdao.insertSSI(shareownedinfo);
		List<ShareStreamInfo> list = new ArrayList<ShareStreamInfo>();
		list = SSIdao.getAllSSI();
		for(ShareStreamInfo sharestreaminfo:list ) {
			System.out.println(sharestreaminfo);
		}
	}catch(ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
