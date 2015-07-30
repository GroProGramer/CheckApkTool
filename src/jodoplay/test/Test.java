package jodoplay.test;

import java.io.File;

import jodoplay.AndroidManiFest.CheckAndroidManiFest;
import jodoplay.checkInterfaceCall.CheckInterface;
import jodoplay.md5andcrc.CheckMD5AndCRC;
import jodoplay.util.Util;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Util.decompileTargetApk();
		CheckMD5AndCRC.doCheckCode(Util.getTargetApkDecompilePath(), "standard/sdk-debug");
		CheckAndroidManiFest.doCheckAndroidManiFest();
		CheckInterface.doCheckInterface();
		System.out.println("");
	}
	
	

}
