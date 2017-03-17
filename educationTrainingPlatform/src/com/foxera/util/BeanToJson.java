package com.foxera.util;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.JsonParseException;

public class BeanToJson {
	/**
	 * bean转json字符�?
	 * fastjson的写�?
	 * @param bean
	 * @return
	 */
	public static String beanToJson(Object bean){
		String result="";
		try {
			result=JSON.toJSONString(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * bean转json字符�?
	 * jackson的写�?
	 * @param bean
	 * @return
	 */
	public static String beanToJsonJackson(Object bean){
		String result="";
		ObjectMapper mapper = new ObjectMapper();
		try {
			result = mapper.writeValueAsString(bean);
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * json字符串转普�?bean（非集合�?
	 * fastjson的写�?
	 * @param jsonstr
	 * @param t
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static <T> T json2Bean(String jsonstr,T t){
		T result=null;
		try {
			result=(T) JSON.parseObject(jsonstr,t.getClass());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * json字符串转普�?bean（非集合�?
	 * jackson的写�?
	 * @param jsonstr
	 * @param t
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static <T> T json2BeanJackson(String jsonstr,T t){
		T result=null;
		ObjectMapper mapper=new ObjectMapper();
		try {
			result = (T) mapper.readValue(jsonstr, t.getClass());
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * json字符串转集合
	 * jackson的写�?
	 * @param jsonstr
	 * @param t
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static <T> List<T> json2Beanlist(String jsonstr,T t){
		List<T> result=null;
		try {
			result= (List<T>) JSON.parseArray(jsonstr, t.getClass());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	

}
