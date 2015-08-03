package jodoplay.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringWriter;

public class Util {

	public static void decompileTargetApk(String targetApkName){
		try {
			//Runtime.getRuntime().exec("cmd.exe /k start "+System.getProperty("user.dir")+"/exebat.bat");
			Process pro=Runtime.getRuntime().exec("cmd.exe /c  apktool.bat d "+targetApkName);
			pro.waitFor();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	public static void decompileStandarApk(){
		/********************************************/
		try {
			//Runtime.getRuntime().exec("cmd.exe /k start "+System.getProperty("user.dir")+"/exebat.bat");
			Process pro=Runtime.getRuntime().exec("cmd.exe start /k  apktool.bat d targetapk/sdk-debug.apk targetapk");
			pro.waitFor();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	/*
	 * apk文件必須放在本项目的根目录下，否则找不到
	 * */
	public static String getApkName(){

		String apkName="";
		File f=new File(System.getProperty("user.dir"));
		File[] childFiles=f.listFiles();
		for(int i=0;i<childFiles.length;i++){
			if(childFiles[i].getName().endsWith(".apk")&&childFiles[i].isFile()){
				apkName=childFiles[i].getName();
				break;
			}
		}
		
		return apkName;
	}
	
	public static String getVersion(String apkName){/******************未完成******************/
		String[] sarr=apkName.split(".");
		//System.out.println(sarr[0]);
		return "AndroidManifest1.0.0.0";
		
	}
	
	public static String getTargetApkDecompilePath(){
		String result="";
		String apkName=Util.getApkName();
		result=apkName.substring(0, apkName.lastIndexOf(".apk"))+"/";
		return result;		
	}
	
	public static File getTargetApkFile(){
		String apkName=Util.getApkName();
		return new File(apkName.substring(0,  apkName.lastIndexOf(".apk")));
		
	}
	
	public static String getStandarApkDecompilePath(){
		String result="";
		/*************************************************************************/
		return result;		
	}
	
	public static void decompileTargetApk(){
		String apkName=Util.getApkName();
		Util.decompileTargetApk(apkName);
	}
	
	/** 
     * 文本文件转换为指定编码的字符串 
     * 
     * @param file         文本文件 
     * @param encoding 编码类型 
     * @return 转换后的字符串 
     * @throws IOException 
     */ 
    public static String file2String(File file, String encoding) { 
            InputStreamReader reader = null; 
            StringWriter writer = new StringWriter(); 
            try { 
                    if (encoding == null || "".equals(encoding.trim())) { 
                            reader = new InputStreamReader(new FileInputStream(file), "utf-8");
                    } else { 
                            reader = new InputStreamReader(new FileInputStream(file),encoding); 
                    } 
                    //将输入流写入输出流 
                    char[] buffer = new char[1024]; 
                    int n = 0; 
                    while (-1 != (n = reader.read(buffer))) { 
                            writer.write(buffer, 0, n); 
                    } 
            } catch (Exception e) { 
                    e.printStackTrace(); 
                    return null; 
            } finally { 
                    if (reader != null) 
                            try { 
                                    reader.close(); 
                            } catch (IOException e) { 
                                    e.printStackTrace(); 
                            } 
            } 
            //返回转换结果 
            if (writer != null) 
                    return writer.toString(); 
            else return null; 
    }

    
    public static void outPutLog(String outPutFilePath,String filename,String fileContent){
    	File file =new File(outPutFilePath);    
		//如果文件夹不存在则创建    
		if  (!file .exists()  && !file .isDirectory())      
		{        
		    file .mkdir();    
		} 
		byte[] buff=new byte[]{};
		FileOutputStream os = null;
		try {
			os = new FileOutputStream(outPutFilePath+"/"+filename);
			buff=fileContent.getBytes();
			os.write(buff, 0, buff.length);
			os.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
    }
    
    
}
