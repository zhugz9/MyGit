package com.mp.util;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
public class TimeUtils {
	
	//获取格式化时间
	public static String getFormatDate(String sql){
		return sql.substring(0,11);
	}
	//转为date
	public static Date getDate(String sql) throws ParseException{
		return (Date) new SimpleDateFormat("dd-MMM-yyyy").parse(sql);
	}
	// 获取当前时间
	public static String getCurrentTime(){
		return new SimpleDateFormat("yyyy-MM-dd").format(System.currentTimeMillis());
	}
	
	//时间加上年月日
	public static String getFormatDateAddYear(String sql){
		String str=sql.trim();
		String month="";
		String day="";
		String year=str.substring(0,4)+"年";
		if(Integer.parseInt(str.substring(5,6))==0){
			month=str.substring(6,7)+"月";
		}else{
			month=str.substring(5,7)+"月";
		}
		if(Integer.parseInt(str.substring(8,9))==0){
			day=str.substring(9,10)+"日";
		}else{
			day=str.substring(8,10)+"日";
		}
		str=year+month+day;
		System.out.println(str);
		return str;
	}
}
