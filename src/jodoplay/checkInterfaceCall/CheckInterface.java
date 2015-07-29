package jodoplay.checkInterfaceCall;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import jodoplay.util.Util;

public class CheckInterface {

	public static StringBuilder checkresult=new StringBuilder();
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
                	targetResult.append(tempString+"\r\n");
                }
            }
            if(useJodoInterface){
            	targetResult.append(f.getAbsolutePath()+"\r\n\n");
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
}
