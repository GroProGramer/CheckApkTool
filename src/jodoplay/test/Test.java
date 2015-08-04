package jodoplay.test;

import jodoplay.AndroidManiFest.CheckAndroidManiFest;
import jodoplay.checkInterfaceCall.CheckInterface;
import jodoplay.checkInterfaceCall.CheckPck;
import jodoplay.checkToolManager.CheckToolManager;
import jodoplay.md5andcrc.CheckMD5AndCRC;
import jodoplay.util.Util;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	 try{	
		CheckToolManager.getInstance().init();
		CheckMD5AndCRC.getInstance(Util.getTargetApkDecompilePath(), "standard/sdk-debug").CheckCRCAndMD5Code();
		CheckAndroidManiFest.getInstance(Util.getTargetApkDecompilePath()+"AndroidManifest.xml").CheckAndroidManiFest();
		CheckInterface.getInstance().CheckInterface();
		CheckPck.getInstance().CheckPck();
	 }
	 catch(RuntimeException e){
		 CheckToolManager.getInstance().exceptionAppend(e+"\r\n"); 
	 }
		CheckToolManager.getInstance().outPutLog();
		System.out.println("");
	}
	
	
}
