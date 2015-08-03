package jodoplay.checkToolManager;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import jodoplay.checkInterfaceCall.LibConfig;
import jodoplay.util.Util;

public class CheckToolManager {

	private static File ManiFestFile;
	private static File smaliFiles;
	private static StringBuilder checkInterfaceResult=new StringBuilder(); 
	private static StringBuilder checkManiFestResult=new StringBuilder(); 
	private static StringBuilder checkMd5AndCRCResult=new StringBuilder(); 
	private static ArrayList<LibConfig> configs=new ArrayList<LibConfig>();
	public static void init(){
		Util.decompileTargetApk();
		initConfig();
		setManiFestFile(new File(Util.getTargetApkDecompilePath()+"AndroidManifest.xml"));
		//setSmaliFiles(new File(Util.getApkName()+"/smali"));
	
	}
	
	public static void initConfig(){
		SAXReader reader = new SAXReader();
		Document document = null;
		try {
			document = reader.read(new File("config.xml"));
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Element root = document.getRootElement();
		circleAddNode(configs,root);
		
	}
	
	public static void circleAddNode(ArrayList<LibConfig> nodes,Element e){
		if(e.getName().equals("lib")){
		   LibConfig lc=new LibConfig(e);
		   nodes.add(lc);
		}
		Iterator<Element> iterator = e.elementIterator();
		while(iterator.hasNext()){
			Element childNode = iterator.next();
			circleAddNode(nodes,childNode);
		}
	}
	public static File getManiFestFile() {
		return ManiFestFile;
	}
	public static void setManiFestFile(File maniFestFile) {
		ManiFestFile = maniFestFile;
	}
	public static File getSmaliFiles() {
		return smaliFiles;
	}
	public static void setSmaliFiles(File smaliFiles) {
		CheckToolManager.smaliFiles = smaliFiles;
	}
	
	public static void checkInterfaceResultAppend(String s){
		checkInterfaceResult.append(s);
	}
	
	public static void checkManiFestResultAppend(String s){
		checkManiFestResult.append(s);
	}
	
	public static void checkMd5AndCRCResultAppend(String s){
		checkMd5AndCRCResult.append(s);
	}
	

	public static ArrayList<LibConfig> getConfigs() {
		return configs;
	}
	
    public static void outPutInterfaceAndLibsCheckLog(){
    	Util.outPutLog("checkInterface", "checkInterface.txt", checkInterfaceResult.toString());
	}
	
    public static void outPutAndroidManiFestCheckLog(){
    	Util.outPutLog("AndroidManiFest", "AndroidManiFestCheck.txt", checkManiFestResult.toString());
	}
    
    public static void outPutMd5AndCRCCheckLog(){
    	Util.outPutLog("MD5与CRC码校验结果", "MD5与CRC码校验结果.txt", checkMd5AndCRCResult.toString());
	}
	
	public static void outPutLog(){
		outPutInterfaceAndLibsCheckLog();
		outPutAndroidManiFestCheckLog();
		outPutMd5AndCRCCheckLog();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
