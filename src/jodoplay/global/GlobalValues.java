package jodoplay.global;

import org.dom4j.Element;

public class GlobalValues {

	private static Element application=null;

	public static Element getApplication() {
		return application;
	}

	public static void setApplication(Element application) {
		GlobalValues.application = application;
	}
	
}
