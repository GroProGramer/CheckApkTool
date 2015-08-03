package jodoplay.checkInterfaceCall;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import jodoplay.checkToolManager.CheckToolManager;
import jodoplay.global.GlobalValues;
import jodoplay.util.Util;

import org.dom4j.Attribute;
import org.dom4j.Element;

public class CheckInterface {

	public static StringBuilder checkInterfaceResult=new StringBuilder();
	//public static StringBuilder checkSupportV4Result=new StringBuilder();
	
	public static String[] forceCallInterfaceTable={
		"onCreate","onResume","onPause","onStart","onStop","onDestroy","onBackPressed",
		"onActivityResult","onRoleLoaded","setScreenPortrait","appInit","initSDK","showPayView",
		"showLoginView","showQuitGameView"
	};
	
	
	public static HashMap<String,Integer> stanInterfaceTable=new HashMap<String,Integer>();
	
	public static void checkFiles(File targetFile){
		File[] files=targetFile.listFiles();
		for(int i=0;i<files.length;i++){
			File f=files[i];
		 
			if(f.isFile()){
				checkAFile(f);
			}
			else checkFiles(f);
		  
		}
	}
	
	public static void checkAFile(File f){
		setCheckInterfaceResult(f);		
		//setCheckSupportPckResult(f);
	}
	
	public static void check(File rootFile){
		File[] files=rootFile.listFiles();
		for(int i=0;i<files.length;i++){
			File f=files[i];
			if(f.getName().equals("smali")){
				checkFiles(f);
			}
		}
		showInterfaceCallTimes();
	}
	
	public static void outPutLog(){
		showInterfaceCallTimes();
		//setCpUseSupportV4Result();
		Util.outPutLog("checkInterface", "checkInterface.txt", checkInterfaceResult.toString());
	}
	
	
	
	
	
	public static void setCheckInterfaceResult(File f) {
		if(f.getAbsolutePath().contains("com\\jodo")||f.getAbsolutePath().contains("com\\nostra13")||f.getAbsolutePath().contains("com\\facebook"))
				return;
        BufferedReader reader = null;
        boolean useJodoInterface=false;
        try {
            reader = new BufferedReader(new FileReader(f));
            String tempString = null;
            while ((tempString = reader.readLine()) != null) {
                if(tempString.contains("JodoPlaySDKManager")){
                	useJodoInterface=true;
                	String s=tempString.substring(tempString.indexOf("JodoPlaySDKManager"), tempString.lastIndexOf("("));
                	String methodname=s.substring(s.indexOf(">")+1, s.length());
                	if(stanInterfaceTable.get(methodname)!=null){
                	   Integer callTimes=(Integer)stanInterfaceTable.get(methodname)+1;
                	
                	stanInterfaceTable.put(methodname,callTimes);
                	}
                	else stanInterfaceTable.put(methodname,1);
                	//checkInterfaceResult.append(s+"\r\n");
                	CheckToolManager.checkInterfaceResultAppend(s+"\r\n");
                }
                
            }
            if(useJodoInterface){
            	//checkInterfaceResult.append(f.getAbsolutePath()+"\r\n\r\n");
            	CheckToolManager.checkInterfaceResultAppend(f.getAbsolutePath()+"\r\n\r\n");
            }           
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        } 
    }
	
	public static void showInterfaceCallTimes(){		
        Element application=GlobalValues.getApplication();
        Attribute appname=application.attribute("name");
        if(appname!= null&&appname.getValue().equals("com.jodo.paysdk.JodoApp")){
        	if(stanInterfaceTable.get("appInit")!=null){
        	   Integer callTimes=(Integer)stanInterfaceTable.get("appInit")+1;
        	   stanInterfaceTable.put("appInit",callTimes);
        	}
        	else stanInterfaceTable.put("appInit",1);
        }
        Iterator iter = stanInterfaceTable.entrySet().iterator();
        //checkInterfaceResult.append("各方法调用次数如下:\r\n");
        CheckToolManager.checkInterfaceResultAppend("各方法调用次数如下:\r\n");
        while(iter.hasNext()){
        	Map.Entry<String, Integer> entry=(Map.Entry<String, Integer>)iter.next();
        	//checkInterfaceResult.append(entry.getKey()).append(":").append(entry.getValue()).append("\r\n\r\n"); 
        	CheckToolManager.checkInterfaceResultAppend(entry.getKey()+":"+entry.getValue()+"\r\n\r\n");
        }
        
        for(int i=0;i<forceCallInterfaceTable.length;i++){
        	if(stanInterfaceTable.get(forceCallInterfaceTable[i])==null){
        		//checkInterfaceResult.append("存在必须被CP调用的方法但CP没有调用：").append(forceCallInterfaceTable[i]).append("\r\n");
        		CheckToolManager.checkInterfaceResultAppend("存在必须被CP调用的方法但CP没有调用："+forceCallInterfaceTable[i]+"\r\n");
        	}
        }
	}
	
	public static void doCheckInterface(){
		File f=Util.getTargetApkFile();
		check(f);
		//outPutLog();
	}
		
}
