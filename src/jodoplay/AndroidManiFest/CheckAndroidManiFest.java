package jodoplay.AndroidManiFest;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import jodoplay.checkToolManager.CheckToolManager;
import jodoplay.global.GlobalValues;
import jodoplay.util.Util;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class CheckAndroidManiFest {

	private static  CheckAndroidManiFest cam;
	private  static String targetFilePath, version;
	private static ArrayList<Element> targetNodes=new ArrayList<Element>(),standarNodes=new ArrayList<Element>(),
			resultNodes=new ArrayList<Element>();
	private CheckAndroidManiFest(){
		
	}
	public  static CheckAndroidManiFest getInstance(){
		CheckAndroidManiFest.targetFilePath=Util.getTargetApkDecompilePath()+"AndroidManifest.xml";
		//System.out.println(targetAndroidManiFestFilepath);
		
		//CheckAndroidManiFest.targetFilePath="app-debug0/AndroidManifest.xml";
		CheckAndroidManiFest.version=version;
		if(cam==null){
			cam=new CheckAndroidManiFest();
		}
		return cam;
		
	}
	public void CheckAndroidManiFest(){
		//String standarFilePath="standard/"+version+"/AndroidManifest"+".xml";
		//String standarFilePath=GlobalValues.getStanManifestXmlPath();
		String standarFilePath=CheckToolManager.getInstance().getManiFestFile().getPath();
		//System.out.println("standarFilePath="+standarFilePath);
		beginSetNodes(targetNodes,targetFilePath);
		beginSetNodes(standarNodes,standarFilePath);
		compare(targetNodes,standarNodes,resultNodes);	
		setCheckManiFestResult();
	}
	
	public  void compare(ArrayList<Element> targetNodes,ArrayList<Element> standarNodes,ArrayList<Element> resultNodes){
		for(Element e:standarNodes){
			if(e.getName().equals("application")){
				GlobalValues.setApplication(e);
			}
			if(existInNodesList(targetNodes,e)==false){
				resultNodes.add(e);
			}
		}
	}
	
	public  boolean existInNodesList(ArrayList<Element> nodes,Element e){
		boolean result=false;
		for(Element te:nodes){
			if(twoNodeAreEqual(te,e)) result=true;
		}
		return result;
	}
	
	public  boolean twoNodeAreEqual(Element targetNode,Element standarNode){
		boolean result=false;
		if(standarNode.getName().equals("uses-permission")) result=permissionNodeEqualToAnnother(targetNode,standarNode);
		if(standarNode.getName().equals("application")) result=applicationNodeEqualToAnnother(targetNode,standarNode);
		if(standarNode.getName().equals("activity")) result=activityNodeEqualToAnnother(targetNode,standarNode);
		if(standarNode.getName().equals("receiver")) result=receiverNodeEqualToAnnother(targetNode,standarNode);
		if(standarNode.getName().equals("service")) result=serviceNodeEqualToAnnother(targetNode,standarNode);
		if(standarNode.getName().equals("meta-data")) result=metadataNodeEqualToAnnother(targetNode,standarNode);
		return result;
	}
	
	public  boolean metadataNodeEqualToAnnother(Element targetNode,Element standarNode){
		boolean result=false;
        if(targetNode.getName().equals(standarNode.getName())){
			
			Attribute targetNodeattr=targetNode.attribute("name");
			Attribute standarNodeattr=standarNode.attribute("name");
			if(targetNodeattr.getValue().equals(standarNodeattr.getValue()))  {
				result=true;
				//System.out.println(standarNodeattr.getValue());
			}
		}
		return result;		
	}
	
	public  boolean serviceNodeEqualToAnnother(Element targetNode,Element standarNode){
		boolean result=false;
        if(targetNode.getName().equals(standarNode.getName())){
			
			Attribute targetNodeattr=targetNode.attribute("name");
			Attribute standarNodeattr=standarNode.attribute("name");
			if(targetNodeattr.getValue().equals(standarNodeattr.getValue()))  {
				result=true;
				//System.out.println(standarNodeattr.getValue());
			}
		}
		return result;		
	}
	
	public  boolean receiverNodeEqualToAnnother(Element targetNode,Element standarNode){
		boolean result=false;
        if(targetNode.getName().equals(standarNode.getName())){
			
			Attribute targetNodeattr=targetNode.attribute("name");
			Attribute standarNodeattr=standarNode.attribute("name");
			if(targetNodeattr.getValue().equals(standarNodeattr.getValue()))  {
				result=true;
				//System.out.println(standarNodeattr.getValue());
			}
		}
		return result;		
	}
	
	public  boolean applicationNodeEqualToAnnother(Element targetNode,Element standarNode){
		boolean result=false;
        if(targetNode.getName().equals(standarNode.getName())){
			
			Attribute targetNodeattr=targetNode.attribute("name");
			Attribute standarNodeattr=standarNode.attribute("name");
			if(standarNodeattr==null&&targetNodeattr!=null||standarNodeattr==null&&targetNodeattr==null||standarNodeattr!=null&&targetNodeattr!=null){
				result=true;
			}
			
			
		}
		return result;		
	}
	
	public  boolean permissionNodeEqualToAnnother(Element targetNode,Element standarNode){
		boolean result=false;
        if(targetNode.getName().equals(standarNode.getName())){
			
			Attribute targetNodeattr=targetNode.attribute("name");
			Attribute standarNodeattr=standarNode.attribute("name");
			if(targetNodeattr.getValue().equals(standarNodeattr.getValue()))  {
				result=true;
				//System.out.println(standarNodeattr.getValue());
			}
		}
		return result;		
	}
	
	public  boolean activityNodeEqualToAnnother(Element targetNode,Element standarNode){
		boolean result=false;
        if(targetNode.getName().equals(standarNode.getName())){
			
			Attribute targetNodeattr=targetNode.attribute("name");
			Attribute standarNodeattr=standarNode.attribute("name");
			if(targetNodeattr.getValue().equals(standarNodeattr.getValue()))  {
				result=true;
				//System.out.println(standarNodeattr.getValue());
			}
		}
		return result;		
	}
	
	public  void circleAddNode(ArrayList<Element> nodes,Element e){
		if(shouldAdd(e)){
			nodes.add(e);
		}
		Iterator<Element> iterator = e.elementIterator();
		while(iterator.hasNext()){
			Element childNode = iterator.next();
			circleAddNode(nodes,childNode);
		}
	}
	
	public  void beginSetNodes(ArrayList<Element> nodes,String filePath){
		SAXReader reader = new SAXReader();
		Document document = null;
		try {
			document = reader.read(new File(filePath));
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			CheckToolManager.getInstance().exceptionAppend(e+"");
		}
		Element root = document.getRootElement();
		circleAddNode(nodes,root);
	}
	
	
	public  boolean shouldAdd(Element e){
		boolean result=false;
		String elementName=e.getName();
		if(elementName.equals("uses-permission")||elementName.equals("application")||elementName.equals("activity")
				||elementName.equals("receiver")||elementName.equals("service")||elementName.equals("meta-data")){
			result=true;
		}  
		
		return result;		
	}
	public  ArrayList<Element> getResultNodes() {
		return resultNodes;
	}
	
	public  void outPutLog(String outPutFilePath){
		
				
				File file =new File(outPutFilePath);    
				//如果文件夹不存在则创建    
				if  (!file .exists()  && !file .isDirectory())      
				{       
				    //System.out.println("//不存在");  
				    file .mkdir();    
				} else   
				{  
				    //System.out.println("//目录存在");  
				}  
				outPutTxtLog(outPutFilePath);
				try {
					outPutXmlLog(outPutFilePath);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					CheckToolManager.getInstance().exceptionAppend(e+"");
				}
			
		
	}
	
	public  void outPutTxtLog(String outPutFilePath){
		StringBuilder sb=new StringBuilder();
		String outputfile=new String(outPutFilePath+"/"+"AndroidManifest分析结果"+".txt");
		byte[] buff=new byte[]{};			
				FileOutputStream os;
				try {
					os = new FileOutputStream(outputfile);
					if(resultNodes.size()==0){
						buff=new String("检验结果:没有问题！").getBytes();
					}
					else{
						sb.append("缺少以下结点\r\n\r\n");
						for(Element e:resultNodes){
							sb.append("结点名").append(e.getName()).append("\r\n");
							for(Attribute attr:(List<Attribute>)e.attributes()){
								sb.append("属性名").append(attr.getName()).append("\t")
								.append("属性值").append(attr.getValue()).append("\r\n");
							}
							sb.append("\r\n");
						}
						buff=sb.toString().getBytes();
					}
					os.write(buff, 0, buff.length);
				} catch (FileNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					CheckToolManager.getInstance().exceptionAppend(e1+"\r\n");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					CheckToolManager.getInstance().exceptionAppend(e+"\r\n");
				}			
	}
	
	public  void outPutXmlLog(String outPutFilePath) throws IOException{
		String outputfile=new String(outPutFilePath+"/"+"AndroidManifest检验结果"+".xml");
		 Document doc=DocumentHelper.createDocument();
		 Element root=doc.addElement("result");
		 root.setText("校验结果");
		 for(Element e:resultNodes){
			 Element child=root.addElement(e.getName());
			 for(Attribute attr:(List<Attribute>)e.attributes()){
			     child.addAttribute(attr.getName(), attr.getValue());
			 }
		 }
		 OutputFormat format=new OutputFormat("\t",true,"UTF-8");
		 XMLWriter writer = new XMLWriter(new FileWriter(new File(outputfile)),format);
		   try {
			writer.write(doc);
			writer.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			CheckToolManager.getInstance().exceptionAppend(e1+"");
		}
	       
	}
	
	public void setCheckManiFestResult(){
		if(resultNodes.size()==0) CheckToolManager.getInstance().checkManiFestResultAppend("检验结果:没有问题！");
		else {
			
			CheckToolManager.getInstance().checkManiFestResultAppend("缺少以下结点\r\n\r\n");
			for(Element e:resultNodes){
				CheckToolManager.getInstance().checkManiFestResultAppend("结点名"+e.getName()+"\r\n");
				for(Attribute attr:(List<Attribute>)e.attributes()){
					CheckToolManager.getInstance().checkManiFestResultAppend("属性名"+attr.getName()+"\t"+"属性值"+attr.getValue()+"\r\n");
				}
				
				CheckToolManager.getInstance().checkManiFestResultAppend("\r\n");
			}
		}
	}
	
	
}
