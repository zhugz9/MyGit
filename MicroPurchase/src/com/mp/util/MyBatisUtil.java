package com.mp.util;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	static SqlSessionFactory factory;
	  
	  static{
		  try {
			//1 )����mybatis-config.xml--->InputStream����
			  InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
			 //2) ��ݿ����ӵĹ���: SqlSessionFactory
			  factory = new SqlSessionFactoryBuilder().build(is);
		} catch (Exception e) {
			e.printStackTrace();
		}
	  }
	  
	  //�õ�����
	   public static SqlSession getSession(){
		   if(factory!=null){
			   return factory.openSession();
		   }
		   return null;
	   }
	   
	   
	   //�ر�����
	   public static void closeSession(SqlSession session){
		   if(session!=null){
			   session.close();
		   }
	   }
	   
}
