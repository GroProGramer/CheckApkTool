package jodoplay.checkInterfaceCall;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import jodoplay.global.GlobalValues;
import jodoplay.util.Util;

import org.dom4j.Attribute;
import org.dom4j.Element;

public class CheckInterface {

	public static StringBuilder checkInterfaceResult=new StringBuilder();
	public static StringBuilder checkSupportV4Result=new StringBuilder();
	public static boolean isCPUseSupportV4=false;
	public static String[] forceCallInterfaceTable={
		"onCreate","onResume","onPause","onStart","onStop","onDestroy","onBackPressed",
		"onActivityResult","onRoleLoaded","setScreenPortrait","appInit","initSDK","showPayView",
		"showLoginView","showChangeAccountView","showQuitGameView"
	};
	
	public static String[] supportV4Table={
		"support/v4/app"
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
		if(f.getAbsolutePath().contains("com\\jodo")==false&&f.getAbsolutePath().contains("com\\nostra13")==false&&f.getAbsolutePath().contains("com\\facebook")==false){
			setCheckInterfaceResult(f);
		}
		setCheckSupportPckResult(f);
	}
	
	public static void check(File rootFile){
		File[] files=rootFile.listFiles();
		for(int i=0;i<files.length;i++){
			File f=files[i];
			if(f.getName().equals("smali")){
				checkFiles(f);
			}
		}
	}
	
	public static void outPutLog(){
		showInterfaceCallTimes();
		setCpUseSupportV4Result();
		Util.outPutLog("checkInterface", "checkInterface.txt", checkInterfaceResult.toString());
	}
	
	public static void setCpUseSupportV4Result(){
		if(isCPUseSupportV4){
			checkInterfaceResult.append("CP使用了supportV4包\r\n");
		}
		else checkInterfaceResult.append("CP并未使用supportV4包\r\n");
	}
	public static String checkCodeUseSupportV4(String code){
		String result=null;		
			if(code.contains("support/v4/app")){
				isCPUseSupportV4=true;
				result=code.substring(code.indexOf("support/v4/app"), code.lastIndexOf(";"));
			}		
		return result;
		
	}
	
	public static void setCheckSupportPckResult(File f){
		if(f.getAbsolutePath().contains("com\\jodo")||f.getAbsolutePath().contains("com\\nostra13")||f.getAbsolutePath().contains("com\\facebook"))
			return;
		 BufferedReader reader = null;
	        try {
	            reader = new BufferedReader(new FileReader(f));
	            String tempString = null;
	            while ((tempString = reader.readLine()) != null) {
	            	String s=checkCodeUseSupportV4(tempString);
	                if(s!=null){
	                	checkSupportV4Result.append("使用supportV4包組件：").append(s).append("\r\n")
	                	.append("所在文件为：").append(f.getAbsolutePath()).append("\r\n");
	                }	                
	            }	                  
	            reader.close();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } 
	}
	
	
	
	public static void setCheckInterfaceResult(File f) {
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
                	checkInterfaceResult.append(s+"\r\n");
                }
                
            }
            if(useJodoInterface){
            	checkInterfaceResult.append(f.getAbsolutePath()+"\r\n\r\n");
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
        checkInterfaceResult.append("各方法调用次数如下:\r\n");
        while(iter.hasNext()){
        	Map.Entry<String, Integer> entry=(Map.Entry<String, Integer>)iter.next();
        	checkInterfaceResult.append(entry.getKey()).append(":").append(entry.getValue()).append("\r\n\r\n");        	
        }
        
        for(int i=0;i<forceCallInterfaceTable.length;i++){
        	if(stanInterfaceTable.get(forceCallInterfaceTable[i])==null){
        		checkInterfaceResult.append("存在必须被CP调用的方法但CP没有调用：").append(forceCallInterfaceTable[i]).append("\r\n");
        	}
        }
	}
	
	public static void doCheckInterface(){
		File f=Util.getTargetApkFile();
		check(f);
		outPutLog();
	}
		
}
