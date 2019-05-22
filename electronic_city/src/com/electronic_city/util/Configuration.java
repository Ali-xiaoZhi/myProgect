package com.electronic_city.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 配置类(文件读取),单例模式-懒汉模式
 */
public class Configuration {
	private Properties pp;
	//
	private Configuration() {
		pp = new Properties();
		InputStream is = Configuration.class.getClassLoader().getResourceAsStream("database.properties");
		try {
			pp.load(is);
			is.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private static Configuration config;

	public static Configuration getConfig() {
		if(config == null) {
			config = new Configuration();
		}
		return config;
	}
	
	public String getkey(String key) {
		return pp.getProperty(key);
	}
}
