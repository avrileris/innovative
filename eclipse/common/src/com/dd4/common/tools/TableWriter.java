package com.dd4.common.tools;

import java.io.File;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.TreeSet;

import javax.swing.JOptionPane;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;

public class TableWriter {
	public static void runUMLClasses(Connection con, String schema, String pattern, PrintStream out)throws Exception{
		pattern = pattern.toUpperCase();
		TreeSet<UMLClass> classes = new TreeSet<UMLClass>();
		for(String str:DomainWriter.xmlUrls){
			SAXBuilder builder = new SAXBuilder();
			File xmlFile = new File(str);
			Document document = (Document) builder.build(xmlFile);
			Element rootNode = document.getRootElement();
			for(Object o:rootNode.getChildren("CLASS")){
				UMLClass umlClass = new UMLClass((Element)o);
				if(umlClass.getDBTable().toUpperCase().contains(pattern))
					classes.add(umlClass);
			}
		}
		for(UMLClass umlClass:classes){
			//out.println("--================== "+umlClass+" ====================");
			umlClass.getDBChange(con.getMetaData(),schema,out,true);
		}
		out.print(UMLClass.getUndo());
	}
	public static void main(String[] args){
		try {
			//DomainWriter.initLNF();
			//DomainWriter.init();
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("", "mayfiee", "mayfiez");
			//PrintStream ps = new PrintStream(new FileOutputStream("out.sql"));
			runUMLClasses(con,"MDI",JOptionPane.showInputDialog("Input umlclass pattern"),System.out);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
