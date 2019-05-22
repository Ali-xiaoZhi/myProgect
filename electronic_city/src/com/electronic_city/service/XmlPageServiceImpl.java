package com.electronic_city.service;

import com.electronic_city.dao.XmlPage;
import com.electronic_city.dao.XmlPageImpl;

public class XmlPageServiceImpl implements XmlPageService {
	XmlPage xp=new XmlPageImpl();
	@Override
	public int getPageIndex() {
		return xp.getPageIndex();
	}
	
	public int getgoodclassPageCount(){
		return xp.getgoodclassPageCount();
	}

	public int good_defailCount(){
		return xp.good_defailCount();
	}

	
}
