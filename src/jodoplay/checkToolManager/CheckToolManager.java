package jodoplay.checkToolManager;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import jodoplay.checkInterfaceCall.LibConfig;
import jodoplay.util.Util;

public class CheckToolManager {

	private  File maniFestFile;
	private  File smaliFiles;
	private  File stanApkFile;
	private  StringBuilder checkInterfaceResult=new StringBuilder();
	private  StringBuilder checkLibsResult=new StringBuilder(); 
	private  StringBuilder checkManiFestResult=new StringBuilder(); 
	private  StringBuilder checkMd5AndCRCResult=new StringBuilder(); 
	private  StringBuilder exceptions=new StringBuilder(); 
	private  ArrayList<LibConfig> configs=new ArrayList<LibConfig>();
	private  static CheckToolManager ctm;
	private  String version="1.0";
	private  String templateFiles="standard";
	private  String logFiles="log";
	private boolean maniFestHasInit=false;
	private String apkname="apkNotExist";
	private String pckname="pckNameNotExist";
	
	
	public static CheckToolManager getInstance(){
		if(ctm==null){
			ctm=new CheckToolManager();
		}
		return ctm;
		
	}
	public  void init(String args[]){
		Util.decompileTargetApk();
		initExeArgs(args);
		decompileStanApk();
		initApkName();
		initPckName();
		initConfig();
		initStanManifest();	
		initStanApkFile();
		//System.out.println("maniFestFile="+maniFestFile.getAbsolutePath());
	}
	
	public void decompileStanApk(){
		try {
			
			Process pro=Runtime.getRuntime().exec("cmd.exe /c  apktool.bat d "+templateFiles+"/"+version+"/"+getStanApkName()
					+" -o "+templateFiles+"/"+version+"/"+getStanApkName().substring(0, getStanApkName().lastIndexOf(".apk")));
			pro.waitFor();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			CheckToolManager.getInstance().exceptionAppend(e+"\r\n");
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			CheckToolManager.getInstance().exceptionAppend(e+"\r\n");
			e.printStackTrace();
		} 
		//deleteStanAPK();
	}
	
	public void  deleteStanAPK(){
		File f=new File(templateFiles+"/"+version);
		File[] childFiles=f.listFiles();
		for(int i=0;i<childFiles.length;i++){
			if(childFiles[i].getName().endsWith(".apk")&&childFiles[i].isFile()){
				childFiles[i].delete();
				break;
			}
		}
	}
	
	public String getStanApkName(){
		File f=new File("./"+templateFiles+"/"+version);
		String apkName="";
		File[] childFiles=f.listFiles();
		for(int i=0;i<childFiles.length;i++){
			if(childFiles[i].getName().endsWith(".apk")&&childFiles[i].isFile()){
				apkName=childFiles[i].getName();
				break;
			}
		}
		return apkName;
		
	}
	public void initApkName(){
		apkname=Util.getApkName().substring(0, Util.getApkName().indexOf(".apk"));
	}
	
	public void initPckName(){
		File manifest=new File(Util.getTargetApkDecompilePath()+"/"+"AndroidManifest.xml");
		SAXReader reader = new SAXReader();
		Document document = null;
		try {
			document = reader.read(manifest);
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			CheckToolManager.getInstance().exceptionAppend(e+"");
		}
		Element root = document.getRootElement();
		pckname=root.attributeValue("package");
	}
	
	public void initStanApkFile(){
		File f=new File(templateFiles+"/"+version);
		File[] fs=f.listFiles();
	    for(int i=0;i<fs.length;i++){
	    	if(!fs[i].getName().equals("config.xml")){
	    		stanApkFile=fs[i];
	    	}
	    }
	}
	
	public void initExeArgs(String args[]){
		if(args.length>=1){
		  if(args[0] != null){
		 	  version=args[0];
		  }
		}
		if(args.length>=2){
		  if(args[1]!=null){
			  templateFiles=args[1];
		  }
		}
		if(args.length>=3){
		  if(args[2]!=null){
			  logFiles=args[2];
		  }
		}
	}
	
	public  void initConfig(){
		
		SAXReader reader = new SAXReader();
		Document document = null;
		try {
			//document = reader.read(new File("config.xml"));
			document = reader.read(getConfigFile());
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			exceptionAppend("根目录找不到config.xml\r\n");
		}
		Element root = document.getRootElement();
		circleAddNode(configs,root);
		
	}
	
	public File getConfigFile(){
		File config = null;
		File f=new File(templateFiles+"/"+version);
		if(!f.exists())  exceptionAppend("not exist files in path "+templateFiles+"/"+version);
		File[] fs=f.listFiles();
		for(File cf:fs){
			if(cf.getName().equals("config.xml")) config=cf;
			break;
		}
		if(config == null) exceptionAppend("config.xml not exist in "+templateFiles+"/"+version);
		return config;
		
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
		return maniFestFile;
	}
	
	public  File getSmaliFiles() {
		return smaliFiles;
	}
	public  void setSmaliFiles(File smaliFiles) {
		this.smaliFiles = smaliFiles;
	}
	
	public void checkInterfaceResultAppend(String s){
		checkInterfaceResult.append(s);
	}
	
	public void checkLibsAppend(String s){
		checkLibsResult.append(s);
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
    	Util.outPutLog(logFiles+"/checkInterface", apkname+"_"+pckname+"_"+version+"_"+Util.getCurrentime()+".txt", checkInterfaceResult.toString());
	}
	
    public void outPutAndroidManiFestCheckLog(){
    	Util.outPutLog(logFiles+"/checkAndroidManiFest", apkname+"_"+pckname+"_"+version+"_"+Util.getCurrentime()+".txt", checkManiFestResult.toString());
	}
    
    public void outPutMd5AndCRCCheckLog(){
    	Util.outPutLog(logFiles+"/MD5与CRC码校验结果", apkname+"_"+pckname+"_"+version+"_"+Util.getCurrentime()+".txt", checkMd5AndCRCResult.toString());
	}
    
    public void outPutException(){
         if(exceptions.length()!=0){
        	 Util.outPutLog(logFiles+"/程序运行异常", "程序异常分析.txt", exceptions.toString());
         }
    }
    
    public void outPutLibsLog(){
    	Util.outPutLog(logFiles+"/checkLibs", apkname+"_"+pckname+"_"+version+"_"+Util.getCurrentime()+".txt", checkLibsResult.toString());
    }
	
    
    
	public void outPutLog(){
		File file =new File("./"+logFiles);    
		if(file.exists()){
			Util.deleteDir(file);
		}
		//如果文件夹不存在则创建    
		if(!file.exists()&&!file.isDirectory())      
		{       
		    //System.out.println("//不存在");  
		    file .mkdir();    
		} 
		outPutInterfaceAndLibsCheckLog();
		outPutAndroidManiFestCheckLog();
		//outPutMd5AndCRCCheckLog();
		outPutLibsLog();
		outPutException();
	}
	public String getVersion() {
		return version;
	}
	public String getTemplateFiles() {
		return templateFiles;
	}
	public String getLogFiles() {
		return logFiles;
	}
	
	public File getStanApkFile() {
		return stanApkFile;
	}
	public void initStanManifest(){
		File f=new File(templateFiles+"/"+version);
		//System.out.println(f.exists());
		if(!f.exists())  exceptionAppend("not exist file in path "+templateFiles+"/"+version);
		File[] fs=f.listFiles();
		for(File cf:fs){
			circleSetStanManifest(cf);
		}
		
	}
	
	public void circleSetStanManifest(File f){
		if(maniFestHasInit==true)  return;
		if(f.isFile()){
			if(f.getName().equals("AndroidManifest.xml")) {
				this.maniFestFile=f;
				maniFestHasInit=true;
			}
			return;
		}
		File[] fs=f.listFiles();
		for(File cf:fs){
			circleSetStanManifest(cf);
		}		
	}
	public String getPckname() {
		return pckname;
	}
	
	public String getApkname() {
		return apkname;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
