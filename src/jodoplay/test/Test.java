package jodoplay.test;

import java.io.IOException;

import jodoplay.AndroidManiFest.CheckAndroidManiFest;
import jodoplay.checkInterfaceCall.CheckInterface;
import jodoplay.checkInterfaceCall.CheckPck;
import jodoplay.checkToolManager.CheckToolManager;
import jodoplay.md5andcrc.CheckMD5AndCRC;
import jodoplay.util.Util;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	/* try{	
		CheckToolManager.getInstance().init(args);
		//CheckMD5AndCRC.getInstance(Util.getTargetApkDecompilePath(), "standard/sdk-debug").CheckCRCAndMD5Code();
		CheckAndroidManiFest.getInstance(Util.getTargetApkDecompilePath()+"AndroidManifest.xml").CheckAndroidManiFest();
		CheckInterface.getInstance().CheckInterface();
		CheckPck.getInstance().CheckPck();
	 }
	 catch(RuntimeException e){
		 CheckToolManager.getInstance().exceptionAppend(e+"\r\n"); 
	 }*/
	
		/*try {
			Runtime.getRuntime().exec("cmd.exe /k start java -jar apktool.jar d "+System.getProperty("user.dir")+"\\test\\神之刃7.30.apk "+System.getProperty("user.dir")+"\\test\\神之刃7.30");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("cmd.exe /k start java -jar apktool.jar d "+System.getProperty("user.dir")+"\\test\\神之刃7.30.apk "+System.getProperty("user.dir")+"\\test\\神之刃7.30");*/
		System.out.println("decompiling apk...");
		CheckToolManager.getInstance().init(args);
		System.out.println("checking AndroidManiFest.xml...");
		CheckAndroidManiFest.getInstance().CheckAndroidManiFest();
		System.out.println("checking Interface of JodoPlaySDKManager...");
		CheckInterface.getInstance().CheckInterface();
		System.out.println("checking libs...");
		CheckPck.getInstance().CheckPck();
		//System.out.println("checking CRC And MD5Code...");
		//CheckMD5AndCRC.getInstance().CheckCRCAndMD5Code();
		System.out.println("outputing log...");
		CheckToolManager.getInstance().outPutLog();
		System.out.println("check apk over!");
	}
	
	
}
