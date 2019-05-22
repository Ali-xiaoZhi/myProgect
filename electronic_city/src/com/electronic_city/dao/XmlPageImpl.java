package com.electronic_city.dao;

import com.electronic_city.util.Page;

import org.dom4j.Element;


public class XmlPageImpl implements XmlPage {
	
	Page u = new Page();
	Element root=u.getElementRoot();
	Element e=null;
	
	public int getPageIndex(){
		e=root.element("pageIndex");
		return Integer.parseInt(e.getText());
	}
	

	@Override
	public int getgoodclassPageCount() {
		e=root.element("goodclassPageCount");
		return Integer.parseInt(e.getText());
	}
	
	public int good_defailCount() {
		e=root.element("good_defailCount");
		return Integer.parseInt(e.getText());
	}


	

}
