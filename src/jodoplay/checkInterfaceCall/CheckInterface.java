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

	public static StringBuilder checkresult=new StringBuilder();
	/*public static String[] stanInterfaceTable={
		"onCreate","onResume","onPause","onStart","onStop","onDestroy","onBackPressed",
		"onActivityResult","onRoleLoaded","setScreenPortrait","appInit","initSDK","showPayView",
		"showLoginView","showChangeAccountView","showQuitGameView"
	};*/
	
	public static HashMap<String,Integer> stanInterfaceTable=new HashMap<String,Integer>(){
		{
		put("onCreate",0);put("onResume",0);
		put("onPause",0);put("onStart",0);put("onStop",0);
		put("onDestroy",0);put("onBackPressed",0);put("onActivityResult",0);
		put("onRoleLoaded",0);put("setScreenPortrait",0);
		put("appInit",0);put("initSDK",0);put("showLoginView",0);
		put("showPayView",0);put("showChangeAccountView",0);
		put("showQuitGameView",0);
		}
	};
	
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
		if(f.getAbsolutePath().contains("com\\jodo\\paysdk")) return;
		setInterfaceCheckResult(f, checkresult);
		
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
		setCheckResult();
		Util.outPutLog("checkInterface", "checkInterface.txt", checkresult.toString());
	}
	
	public static void setInterfaceCheckResult(File f,StringBuilder targetResult) {
        BufferedReader reader = null;
        boolean useJodoInterface=false;
        try {
            reader = new BufferedReader(new FileReader(f));
            String tempString = null;
            while ((tempString = reader.readLine()) != null) {
                // 显示行号
                //System.out.println("line " + line + ": " + tempString);
                if(tempString.contains("JodoPlaySDKManager")){
                	useJodoInterface=true;
                	String s=tempString.substring(tempString.indexOf("JodoPlaySDKManager"), tempString.lastIndexOf("("));
                	String methodname=s.substring(s.indexOf(">")+1, s.length());
                	Integer callTimes=(Integer)stanInterfaceTable.get(methodname)+1;
                	stanInterfaceTable.put(methodname,callTimes);
                	targetResult.append(s+"\r\n");
                }
            }
            if(useJodoInterface){
            	targetResult.append(f.getAbsolutePath()+"\r\n\r\n");
            }           
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
    }
	
	public static void setCheckResult(){		
        Element application=GlobalValues.getApplication();
        Attribute appname=application.attribute("name");
        if(appname!= null&&appname.getValue().equals("com.jodo.paysdk.JodoApp")){
        	Integer callTimes=(Integer)stanInterfaceTable.get("appInit")+1;
        	stanInterfaceTable.put("appInit",callTimes);
        }
        Iterator iter = stanInterfaceTable.entrySet().iterator();
		checkresult.append("各方法调用次数如下:\r\n");
        while(iter.hasNext()){
        	Map.Entry<String, Integer> entry=(Map.Entry<String, Integer>)iter.next();
        	checkresult.append(entry.getKey()).append(":").append(entry.getValue()).append("\r\n");        	
        }
	}
		
}
