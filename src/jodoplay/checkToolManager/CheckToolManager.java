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
	private static StringBuilder exceptions=new StringBuilder(); 
	private static ArrayList<LibConfig> configs=new ArrayList<LibConfig>();
	private static CheckToolManager ctm;
	
	public static CheckToolManager getInstance(){
		if(ctm==null){
			ctm=new CheckToolManager();
		}
		return ctm;
		
	}
	public  void init(){
		Util.decompileTargetApk();
		initConfig();
		setManiFestFile(new File(Util.getTargetApkDecompilePath()+"AndroidManifest.xml"));
	
	}
	
	public  void initConfig(){
		SAXReader reader = new SAXReader();
		Document document = null;
		try {
			document = reader.read(new File("config.xml"));
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			exceptionAppend("根目录找不到config.xml\r\n");
		}
		Element root = document.getRootElement();
		circleAddNode(configs,root);
		
	}
	
	public  void circleAddNode(ArrayList<LibConfig> nodes,Element e){
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
	public  File getManiFestFile() {
		return ManiFestFile;
	}
	public  void setManiFestFile(File maniFestFile) {
		ManiFestFile = maniFestFile;
	}
	public  File getSmaliFiles() {
		return smaliFiles;
	}
	public  void setSmaliFiles(File smaliFiles) {
		CheckToolManager.smaliFiles = smaliFiles;
	}
	
	public void checkInterfaceResultAppend(String s){
		checkInterfaceResult.append(s);
	}
	
	public void checkManiFestResultAppend(String s){
		checkManiFestResult.append(s);
	}
	
	public void exceptionAppend(String s){
		exceptions.append(s);
	}
	
	public void checkMd5AndCRCResultAppend(String s){
		checkMd5AndCRCResult.append(s);
	}
	

	public ArrayList<LibConfig> getConfigs() {
		return configs;
	}
	
    public void outPutInterfaceAndLibsCheckLog(){
    	Util.outPutLog("checkInterface", "checkInterface.txt", checkInterfaceResult.toString());
	}
	
    public void outPutAndroidManiFestCheckLog(){
    	Util.outPutLog("AndroidManiFest", "AndroidManiFestCheck.txt", checkManiFestResult.toString());
	}
    
    public void outPutMd5AndCRCCheckLog(){
    	Util.outPutLog("MD5与CRC码校验结果", "MD5与CRC码校验结果.txt", checkMd5AndCRCResult.toString());
	}
    
    public void outPutException(){
         if(exceptions.length()!=0){
        	 Util.outPutLog("程序运行异常", "程序异常分析.txt", exceptions.toString());
         }
    }
	
	public void outPutLog(){
		outPutInterfaceAndLibsCheckLog();
		outPutAndroidManiFestCheckLog();
		outPutMd5AndCRCCheckLog();
		outPutException();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
