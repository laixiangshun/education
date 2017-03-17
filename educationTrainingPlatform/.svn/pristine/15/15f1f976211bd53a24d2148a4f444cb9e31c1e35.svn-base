package com.foxera.util;

import org.apache.commons.configuration.Configuration;
import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;

public class HttpsUtil {
	/**
	 * 获取配置文件
	 * @param name
	 * @return
	 */
	public static String getConfig(String name){
		Configuration config=null;
		try {
			config = new PropertiesConfiguration("/resources/config.properties");
		} catch (ConfigurationException e1) {
			e1.printStackTrace();
		} 
		return config.getString(name);  
	}
}
