package jodoplay.global;

import org.dom4j.Element;

public class GlobalValues {

	private static Element application=null;
	private static String stanManifestXmlPath="standard/sdk-debug/AndroidManifest.xml";
	private static String stanReferApkFiles="standard/sdk-debug";

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
