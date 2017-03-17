package com.foxera.util;

import net.sf.json.JSONObject;

public class JsonHelper {
	public static String EMPTY = null;
	public static String getValueByName(String jString, String pName) {

		try {
			JSONObject jsonObject = JSONObject.fromObject(jString);
			return jsonObject.getString(pName);
		}
		// 處理異常
		catch (Exception e) {
			return JsonHelper.EMPTY;
		}
	}
	
	public static int getIntByName(String jString, String pName) {
		int result=-1;
		try {
			JSONObject jsonObject = JSONObject.fromObject(jString);
			result= jsonObject.getInt(pName);
		}
		// 處理異常
		catch (Exception e) {
			
		}
		return  result;
	}
}
