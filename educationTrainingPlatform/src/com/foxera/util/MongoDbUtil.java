//package com.foxera.util;
//
//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import org.bson.Document;
//
//import com.foxera.dao.impl.MongoDBDaoImpl;
//
//public class MongoDbUtil {
//	/**
//	 * 根据key从mongodb里取数据，相当于session.get()，这时候取出来的数据时json格式
//	 * @param pkey
//	 * @return
//	 */
//	public static String getMongoData(String pkey) {
//		String pvalue=null;
//		try {
//			String sessionid = ServletActionContext.getRequest().getSession()
//					.getId();
//			Map<String, String> keyValues = new HashMap<String, String>();
//			keyValues.put("sessionid", sessionid);
//			keyValues.put("pkey", pkey);
//			MongoDBDaoImpl mongodb = MongoDBDaoImpl.getMongoDBDaoImplInstance();
//			List<Document> mongodata = mongodb.find(keyValues, 1);
//			pvalue = mongodata.get(0).getString("pvalue");
//		} catch (Exception e) {
//		}
//		return pvalue;
//	}
//	
//	/**
//	 * 每次登陆时清除数据
//	 * @param daynum 要删除前daynum天的数据，daynum为正则删除前daynum天数据，为负则删除后daynum天数据
//	 * @return
//	 */
//	public static boolean deleteLastSessionData(int daynum){
//		boolean flag=false;
//		try {
//			SimpleDateFormat dft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//			Date currentDate = new Date();
//			Calendar date = Calendar.getInstance();
//			date.setTime(currentDate);
//			date.set(Calendar.DATE, date.get(Calendar.DATE) - daynum);
//			String lastDate=dft.format(date.getTime());
//			
//			Map<String, String> keyValues=new HashMap<String, String>();
//			String logicValue=String.format("logic{$lt:%s}", lastDate);
//			keyValues.put("createDate", logicValue);
//			MongoDBDaoImpl mongodb=MongoDBDaoImpl.getMongoDBDaoImplInstance();
//			flag=mongodb.delete(keyValues);
//		} catch (Exception e) {
//			flag=false;
//		}
//		return flag;
//	}
//	/**
//	 * 向mongodb里面加数据，相当于session.put()
//	 * @param pkey
//	 * @param t
//	 * @return
//	 */
//	public static <T> boolean addMongoData(String pkey,T t){
//		try {
//			String sessionid=ServletActionContext.getRequest().getSession().getId();
//			MongoDBDaoImpl mongodb=MongoDBDaoImpl.getMongoDBDaoImplInstance();
//			Map<String, String> keyValues=new HashMap<String, String>();
//			keyValues.put("sessionid", sessionid);
//			keyValues.put("pkey", pkey);
//			List<Document> list=mongodb.find(keyValues, 1);
//			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//			Date currentdate=new Date();
//			keyValues.put("createDate", sdf.format(currentdate));
//			keyValues.put("pvalue", BeanToJson.beanToJson(t));
//			if(list==null ||list.size()<=0){
//				mongodb.inSert(keyValues);
//			}else{
//				Map<String, String> oldkeyValues=new HashMap<String, String>();
//				oldkeyValues.put("sessionid", sessionid);
//				oldkeyValues.put("pkey", pkey);
//				mongodb.update(oldkeyValues, keyValues);
//			}
//			return true;
//		} catch (Exception e) {
//			e.printStackTrace();
//			return false;
//		}
//	}
//	
//	/**
//	 * 清空mongodb，相当于session.clear()
//	 * @return
//	 */
//	public static boolean clearSessionMongodata(){
//		try {
//			String sessionid=ServletActionContext.getRequest().getSession().getId();
//			Map<String, String> keyValues=new HashMap<String, String>();
//			keyValues.put("sessionid", sessionid);
//			MongoDBDaoImpl mongodb=MongoDBDaoImpl.getMongoDBDaoImplInstance();
//			boolean flag=mongodb.delete(keyValues);
//			return flag;
//		} catch (Exception e) {
//			return false;
//		}
//	}
//	
//	/**
//	 * 删除一个，相当于session.remove("a");
//	 * @param pkey
//	 * @return
//	 */
//	public static boolean deleteSessionDataOne(String pkey){
//		try {
//			String sessionid=ServletActionContext.getRequest().getSession().getId();
//			Map<String, String> keyValues=new HashMap<String, String>();
//			keyValues.put("sessionid", sessionid);
//			keyValues.put("pkey", pkey);
//			MongoDBDaoImpl mongodb=MongoDBDaoImpl.getMongoDBDaoImplInstance();
//			boolean flag=mongodb.delete(keyValues);
//			return flag;
//		} catch (Exception e) {
//			return false;
//		}
//	}
//	
//
//
//}
