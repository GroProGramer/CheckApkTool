package jodoplay.checkInterfaceCall;

import java.util.List;

import org.dom4j.Attribute;
import org.dom4j.Element;

public class LibConfig {

	private String checkKey;
	private Element e;
	private String src;
	private String libname;
	public LibConfig(Element e){
		this.e=e;
		setCheckKey(e);
		setLibname(e);
		src=covertCheckKeyToSrc(checkKey);
		
	}
	
	void setCheckKey(Element e){
		List<Attribute> attrs=e.attributes();
		for(Attribute attr:attrs){
			if(attr.getName().equals("checkKey")){
				checkKey=attr.getValue();
			}
		}
	}

	public String getCheckKey() {
		return checkKey;
	}
	
	String covertCheckKeyToSrc(String checkKey){
		return checkKey.replace("/", "\\");
		
	}

	public String getSrc() {
		return src;
	}

	public String getLibname() {
		return libname;
	}

	public void setLibname(Element e) {
		List<Attribute> attrs=e.attributes();
		for(Attribute attr:attrs){
			if(attr.getName().equals("name")){
				libname=attr.getValue();
			}
		}
	}
	
}
