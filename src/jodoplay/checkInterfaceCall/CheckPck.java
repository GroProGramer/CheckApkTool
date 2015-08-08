package jodoplay.checkInterfaceCall;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import jodoplay.checkToolManager.CheckToolManager;
import jodoplay.global.GlobalValues;
import jodoplay.util.Util;

public class CheckPck {
    /*com/loopj/android/http*/
	private static CheckPck cp;
	private ArrayList<String> libs=new ArrayList<String>();
	public static CheckPck getInstance(){
		if(cp==null){
			cp=new CheckPck();
		}
		return cp;
		
	}
	
	
	public  void setCpUsePckResult(){
		if(libs.size()==0){
			CheckToolManager.getInstance().checkLibsAppend("CP沒有使用配置中要求检测的包\r\n");
		}
		for(String libname:libs){
			CheckToolManager.getInstance().checkLibsAppend("CP使用了"+libname+"\r\n");
		}
	}
	
	public  void setCheckPckResult(File f){
		if(f.getAbsolutePath().contains("com\\jodo")||f.getAbsolutePath().contains("com\\facebook")||f.getAbsolutePath().contains("com\\air")
		   ||f.getAbsolutePath().contains("com\\loopj\\android\\http")||f.getAbsolutePath().contains("android\\support")||
		   f.getAbsolutePath().contains("com\\appsflyer")||f.getAbsolutePath().contains("com\\avos")||f.getAbsolutePath().contains("com\\avos\\avoscloud")
		   ||f.getAbsolutePath().contains("com\\jauker\\widget")||f.getAbsolutePath().contains("bolts")||f.getAbsolutePath().contains("com\\chartboost\\sdk")
		   ||f.getAbsolutePath().contains("com\\alibaba\\fastjson")||f.getAbsolutePath().contains("org\\apache\\http\\entity\\mime")||
		   f.getAbsolutePath().contains("org\\java_websocket")||f.getAbsolutePath().contains("com\\nostra13\\universalimageloader"))//
			return;
		for(LibConfig lc:CheckToolManager.getInstance().getConfigs()){
			if(f.getAbsolutePath().contains(lc.getSrc())) return;
		}
		 BufferedReader reader = null;
	        try {
	            reader = new BufferedReader(new FileReader(f));
	            String tempString = null;
	            while((tempString = reader.readLine()) != null){
	            	for(LibConfig lc:CheckToolManager.getInstance().getConfigs()){
	            		if(tempString.contains(lc.getCheckKey())) 
	            			{
	            			  addToLibs(lc.getLibname());
	            			  //System.out.println(f.getAbsolutePath()+"\n"+tempString);/**************************************/
	            			}
	            		
	            	}
	            }
	            reader.close();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } 
	}
	
	public void addToLibs(String libname){
		if(libs.contains(libname)) return;
		libs.add(libname);
	}
	
	public  void checkPckInSmali(File files){
		File[] fs=files.listFiles();
		for(int i=0;i<fs.length;i++){
			if(fs[i].isFile()){
				setCheckPckResult(fs[i]);
			}
			else checkPckInSmali(fs[i]);
		}
	}
	
	public  void CheckPck(){
		File f=Util.getTargetApkFile();
		check(f);
		setCpUsePckResult();
	}
	
	public  void check(File rootFile){
		File[] files=rootFile.listFiles();
		for(int i=0;i<files.length;i++){
			File f=files[i];
			if(f.getName().equals("smali")){
				checkPckInSmali(f);
				break;
			}
		}
	}
	
	
}
