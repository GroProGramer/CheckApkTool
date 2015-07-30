package jodoplay.md5andcrc;

import java.io.File;

public class MyFile {

	private String fileName;
	private String MD5Code;
	private String CRCCodde;
	private FileStatus fileStatus;
	private File souceFile;
	private String filePath;
	public enum FileStatus{
		NotExistInCPApk,Safe,UnSafe
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getMD5Code() {
		return MD5Code;
	}
	public void setMD5Code(String mD5Code) {
		MD5Code = mD5Code;
	}
	public String getCRCCodde() {
		return CRCCodde;
	}
	public void setCRCCodde(String cRCCodde) {
		CRCCodde = cRCCodde;
	}
	public FileStatus getFileStatus() {
		return fileStatus;
	}
	public void setFileStatus(FileStatus fileStatus) {
		this.fileStatus = fileStatus;
	}
	public File getSouceFile() {
		return souceFile;
	}
	public void setSouceFile(File souceFile) {
		this.souceFile = souceFile;
	}
	
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "fileName:"+fileName+'\n'+
			   "fileStatus:"+fileStatus+'\n';
	}
	
	
}
