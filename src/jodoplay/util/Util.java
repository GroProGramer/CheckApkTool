package jodoplay.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import jodoplay.checkToolManager.CheckToolManager;

public class Util {

	public static void decompileTargetApk(String targetApkName){
		try {
			//Runtime.getRuntime().exec("cmd.exe /k start "+System.getProperty("user.dir")+"/exebat.bat");
			Process pro=Runtime.getRuntime().exec("cmd.exe /c  apktool.bat d "+targetApkName);
			pro.waitFor();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			CheckToolManager.getInstance().exceptionAppend(e+"\r\n");
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			CheckToolManager.getInstance().exceptionAppend(e+"\r\n");
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
			CheckToolManager.getInstance().exceptionAppend(e+"\r\n");
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			CheckToolManager.getInstance().exceptionAppend(e+"");
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
		if(apkName.equals("")){
			CheckToolManager.getInstance().exceptionAppend("根目录找不到要检测的apk文件\r\n");
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
    
    public static String getCurrentime(){
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");//设置日期格式
    	return df.format(new Date());// new Date()为获取当前系统时间
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
			CheckToolManager.getInstance().exceptionAppend("输出log到文件时出错，找不到可以输出log的文件\r\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			CheckToolManager.getInstance().exceptionAppend("输出log到文件时出错，"+e+"\r\n");
		}
		
    }
    
    public  static boolean deleteDir(File dir) {
        if (dir.isDirectory()) {
            String[] children = dir.list();
            for (int i=0; i<children.length; i++) {
                boolean success = deleteDir(new File(dir, children[i]));
                if (!success) {
                    return false;
                }
            }
        }
        // 目录此时为空，可以删除
        return dir.delete();
    }
    
    
}
