package cn.yun.core.constant;

import java.util.HashMap;
import java.util.Map;

public class Constant {
	//----------------------登录成功后放入session中的键值---------------------------
	public static final String SYS_USER = "user";
	//----------------------系统权限集合---------------------------
	public static final String PRIVIGELES_XZGL = "xzgl";
	public static final String PRIVIGELES_HQFW = "hqfw";
	public static final String PRIVIGELES_ZXXX = "zxxx";
	public static final String PRIVIGELES_NSFW = "nsfw";
	public static final String PRIVIGELES_WDKJ = "wdkj";
	
	public static Map<String,String> PRIVIGELE_MAP;
	
	static{
		PRIVIGELE_MAP = new HashMap<String,String>();
		PRIVIGELE_MAP.put(PRIVIGELES_XZGL, "行政管理");
		PRIVIGELE_MAP.put(PRIVIGELES_HQFW, "后勤服务");
		PRIVIGELE_MAP.put(PRIVIGELES_ZXXX, "在线学习");
		PRIVIGELE_MAP.put(PRIVIGELES_NSFW, "纳税服务");
		PRIVIGELE_MAP.put(PRIVIGELES_WDKJ, "我的空间");
	}
}
