package com.electronic_city.util;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.File;
public class Page {
	//分页每页条数控制
		public Element getElementRoot(){
			Element e=null;
			SAXReader sr=new SAXReader();
				Document doc=null;;
				try {
					String s="D:/sts/WORK/Electronic_City/WebContent/xml/param.xml";
					doc = sr.read(new File(s));

				} catch (DocumentException e1) {
					e1.printStackTrace();
				}
				e=doc.getRootElement();
			return e;
		}
}
