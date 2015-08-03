package jodoplay.global;

import java.util.HashMap;

import org.dom4j.Element;

public class GlobalValues {

	private static Element application=null;
	private static String stanManifestXmlPath="standard/sdk-debug/AndroidManifest.xml";
	private static String stanReferApkFiles="standard/sdk-debug";
	public static final String suportV4="android-support-v4";
	public static final String asyncHttp="android-async-http-1.4.6";
	public static final String af_android_sdk="AF-Android-SDK-v2.3.1.15";
	public static final String avoscloud_push="avoscloud-push-v3.3.4";
	public static final String avoscloud_sdk="avoscloud-sdk-v3.3.4";
	public static final String badgeview="badgeview";
	public static final String bolts="bolts";
	public static final String chartboost="chartboost";
	public static final String fastjson="fastjson";
	public static final String httpmime="httpmime-4.2.4";
	public static final String Java_WebSocket_leancloud="Java-WebSocket-1.2.0-leancloud";
	public static final String jodoplay_gps="jodoplay-gps";
	public static final String universal_image_loader="universal-image-loader-1.9.3";
	
	public static final  HashMap<String,String> pckTable=new HashMap<String,String>(){
		{
		   put(suportV4,"support/v4/app");put(asyncHttp,"com/loopj/android/http");
		   put(af_android_sdk,"");put(avoscloud_push,"");
		   put(avoscloud_sdk,"");put(badgeview,"");
		   put(bolts,"");put(chartboost,"");
		   put(fastjson,"");put(httpmime,"");
		   put(Java_WebSocket_leancloud,"");put(jodoplay_gps,"");
		   put(universal_image_loader,"");
		}
	};

	public static Element getApplication() {
		return application;
	}

	public static void setApplication(Element application) {
		GlobalValues.application = application;
	}

	public static String getStanManifestXmlPath() {
		return stanManifestXmlPath;
	}

	public static String getStanReferApkFiles() {
		return stanReferApkFiles;
	}
	
	
}
