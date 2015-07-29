package jodoplay.md5andcrc;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;

import org.apache.commons.codec.digest.DigestUtils;

public class CheckMD5AndCRC {

   private static CheckMD5AndCRC cm;
   //private static String targetFilePath,standardFilePath;
   private  ArrayList<MyFile> problemFiles=new ArrayList<MyFile>();
   private  ArrayList<MyFile> referTable=new ArrayList<MyFile>();
   private  ArrayList<MyFile> targetTable=new ArrayList<MyFile>();
   private static  File targetRootFile,standardRootFile;

   private  CheckMD5AndCRC(){
	   
   } 
    
   public static CheckMD5AndCRC getInstance(String targetRootFilePath,String standardRootFilePath){
	   targetRootFile=new File(targetRootFilePath);
	   standardRootFile=new File(standardRootFilePath);
	   if(cm==null){
		   cm=new CheckMD5AndCRC();
	   }
	   return cm;
	   
   }
   
   
   public  void checkAFile(MyFile targetFile,ArrayList<MyFile> referTable){
	   MyFile referFile=null;
	   referFile=getReferFile(targetFile,referTable);
	   if(referFile==null){
		   targetFile.setFileStatus(MyFile.FileStatus.NotExistInStandarApk);
		   problemFiles.add(targetFile);
	   }
	   else{
		   if(twoCodeConsistent(targetFile,referFile)==false){
			   targetFile.setFileStatus(MyFile.FileStatus.UnSafe);
			   problemFiles.add(targetFile);
		   }
	   }
	   
   }
   
   public boolean twoCodeConsistent(MyFile targetFile,MyFile referFile){
	   boolean result=false;
	   if(md5IsCorrect(targetFile,referFile)&&crcIsCorrect(targetFile,referFile)) result=true;
	   return result;
	   
   }
   
   public void checkAllFiles(){
	   try {
		setReferTable(standardRootFile);
		setTargetTable(targetRootFile);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   for(MyFile targetFile:targetTable){
		   checkAFile(targetFile,referTable);
	   }
	   outPutCheckCodeLog("MD5与CRC码校验结果");
   }
   
   public MyFile getReferFile(MyFile targetFile,ArrayList<MyFile> referTable){
	   MyFile referFile=null;
	  for(int i=0;i<referTable.size();i++){
		  if(referTable.get(i).getFileName().equals(targetFile.getFileName())){
			  referFile=referTable.get(i);
		  }
	  } 
	  return referFile;
	   
   }
   
   public  boolean md5IsCorrect(MyFile targetFile,MyFile standardFile){
	   boolean result=true;
	   if(targetFile.getMD5Code().equals(standardFile.getMD5Code())==false){
		   result=false;
	   }
	   return result;
   }
   
   public  boolean crcIsCorrect(MyFile targetFile,MyFile standardFile){
	   boolean result=true;
	   if(targetFile.getCRCCodde().equals(standardFile.getCRCCodde())==false){
		   result=false;
	   }
	 return result;
   }
   
   public  String getFileMD5Code(File file){
	   String MD5Value = null;
	   try {
		MD5Value=DigestUtils.md5Hex(new FileInputStream(file));
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return MD5Value;
	   
   }
   public  String getFileCRCCode(File file) throws Exception {
	   
       //File file=new File(filePath);
       FileInputStream fileinputstream = new FileInputStream(file);
       CRC32 crc32 = new CRC32();
       for (CheckedInputStream checkedinputstream =
           new CheckedInputStream(fileinputstream, crc32);
           checkedinputstream.read() != -1;
           ) {
       }
       //System.out.println(Long.toHexString(crc32.getValue()));
       return Long.toHexString(crc32.getValue());
   }
   
   public void setFileTable(File file,ArrayList<MyFile> fileTable) throws Exception{
	   File[] childFiles=file.listFiles();
	   for(int i=0;i<childFiles.length;i++){
		   File f=childFiles[i];
		   if(f.isFile()){			  
			   fileTable.add(getMyFile(f));
		   }
		   else if(f.isDirectory()){
			   setFileTable(f,fileTable);
		   }
	   }	   
   }
   
   public void setReferTable(File file) throws Exception{
	   setFileTable(file,referTable);
   }
   
   public void setTargetTable(File file) throws Exception{
	   setFileTable(file,targetTable);
   }
   
   public MyFile getMyFile(File f) throws Exception{
	   MyFile mf=new MyFile();
	   mf.setSouceFile(f);
	   mf.setFileName(f.getName());
	   mf.setFilePath(f.getPath());
	   mf.setCRCCodde(getFileCRCCode(f));
	   mf.setMD5Code(getFileMD5Code(f));
	   mf.setFileStatus(MyFile.FileStatus.Safe);
	   return mf;	   
   }

   public ArrayList<MyFile> getProblemFiles() {
	   return problemFiles;
   }
   
   public void outPutCheckCodeLog(String outPutFilePath){
	   File file =new File(outPutFilePath);    
		//如果文件夹不存在则创建    
		if  (!file .exists()  && !file .isDirectory())      
		{        
		    file .mkdir();    
		} 
		byte[] buff=new byte[]{};
		FileOutputStream os;
		StringBuilder sb=new StringBuilder();
		try {
			os = new FileOutputStream(outPutFilePath+"/MD5与CRC码校验结果.txt");
			if(problemFiles.size()==0){
				buff=new String("检验结果:没有问题！").getBytes();
			}
			else{
				sb.append("以下文件有问题\r\n");
				for(MyFile f:problemFiles){
					sb.append("文件名：").append(f.getFileName()).append("\r\n")
					.append("文件路径：").append(f.getFilePath()).append("\r\n")
					.append("问题类型：").append(f.getFileStatus()).append("\r\n\r\n");
				}
				buff=sb.toString().getBytes();
			}
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
   
   public static void doCheckCode(String targetRootFilePath,String standardRootFilePath){
		CheckMD5AndCRC cm=CheckMD5AndCRC.getInstance(targetRootFilePath,standardRootFilePath);
		cm.checkAllFiles();
		
	}
}


