//package com.foxera.util;
//
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//
//public class SetRequestUtil {
//	/**
//	 * 根据key获取mongodb里的数据并且存入request域(当指定类型为普通bean时)
//	 * @param key request中存取的key值
//	 * @param tagerClass 泛型类型
//	 * @param request request
//	 */
//	public static <T> void setRequestData(String key, T tagerClass,
//			HttpServletRequest request) {
//		T result=null;
//		String values = MongoDbUtil.getMongoData(key);
//		result = (T) BeanToJson.json2Bean(values, tagerClass);
//		if (result != null) {
//			request.setAttribute(key, result);
//		}
//	}
//	
//	/**
//	 * 根据key获取mongodb里的数据并且存入request域(当指定类型为list并且泛型为非String类时)
//	 * @param key request中存取的key值
//	 * @param tagerClass 泛型类型
//	 * @param request request
//	 */
//	public static <T> void setRequestDataList(String key, T tagerClass,
//			HttpServletRequest request) {
//		List<T> result=null;
//		String values = MongoDbUtil.getMongoData(key);
//		result = BeanToJson.json2Beanlist(values, tagerClass);
//		if (result != null) {
//			request.setAttribute(key, result);
//		}
//	}
//	
//	/**
//	 * 根据key获取mongodb里的数据并转化为指定类型(当指定类型为普通bean时)
//	 * @param key
//	 * @param tagerClass
//	 * @return
//	 */
//	public static <T> T getSession(String key,T tagerClass){
//		T result=null;
//		String values = MongoDbUtil.getMongoData(key);
//		result = (T) BeanToJson.json2Bean(values, tagerClass);
//		return result;
//	}
//	
//	/**
//	 * 根据key获取mongodb里的数据并转化为指定类型(当指定类型为list并且泛型为非String类时)
//	 * @param key
//	 * @param tagerClass
//	 * @return
//	 */
//	public static <T> List<T> getSessionList(String key,T tagerClass){
//		List<T> result=null;
//		String values = MongoDbUtil.getMongoData(key);
//		result = (List<T>) BeanToJson.json2Beanlist(values, tagerClass);
//		return result;
//	}
//
//}
