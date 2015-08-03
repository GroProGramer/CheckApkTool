package jodoplay.test;

import jodoplay.AndroidManiFest.CheckAndroidManiFest;
import jodoplay.checkInterfaceCall.CheckInterface;
import jodoplay.checkInterfaceCall.CheckPck;
import jodoplay.checkToolManager.CheckToolManager;
import jodoplay.global.GlobalValues;
import jodoplay.util.Util;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Util.decompileTargetApk();
		CheckToolManager.init();
		//CheckMD5AndCRC.doCheckCode(Util.getTargetApkDecompilePath(), "standard/sdk-debug");
		CheckAndroidManiFest.getInstance(Util.getTargetApkDecompilePath()+"AndroidManifest.xml").check();
		CheckInterface.doCheckInterface();
		CheckPck.getInstance().doCheck();
		System.out.println("");
	}
	
	

}
