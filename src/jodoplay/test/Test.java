package jodoplay.test;

import java.io.File;

import jodoplay.AndroidManiFest.CheckAndroidManiFest;
import jodoplay.checkInterfaceCall.CheckInterface;
import jodoplay.util.Util;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Util.decompileTargetApk();
		//CheckMD5AndCRC.doCheckCode(Util.getTargetApkDecompilePath(), "D:/workspaceForEclipse/CheckApkTool/standard");
		CheckAndroidManiFest.doCheckAndroidManiFest();
		File f=Util.getTargetApkFile();
		CheckInterface.check(f);
		CheckInterface.outPutLog();
		System.out.println("");
	}
	
	

}
