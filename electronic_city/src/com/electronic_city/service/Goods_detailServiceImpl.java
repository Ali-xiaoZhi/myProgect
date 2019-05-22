package com.electronic_city.service;

import java.util.List;

import com.electronic_city.dao.Good_detail_Dao;
import com.electronic_city.dao.Good_detail_DaoImpl;

import com.electronic_city.pojo.Good_detail;

public class Goods_detailServiceImpl implements Goods_detailService {
	
	 Good_detail_Dao gdd=new Good_detail_DaoImpl();
	
	
	 public int pagesByTableCount(String tableName,int pageCount){
			int pages=0;
			int count=gdd.getCountByTableName(tableName);
			if(count%pageCount!=0){
				pages=count/pageCount+1;
			}else{
				pages=count/pageCount;
			}
			return pages;
	}

	@Override
	public List<Good_detail> getGood_detailList(int pageIndex, int Good_detailPageCount) {
		// TODO Auto-generated method stub
		
		return gdd.getGood_detailList(pageIndex, Good_detailPageCount);
	}

	@Override
	public int updataGood_detail(Good_detail good_detail) {
		// TODO Auto-generated method stub
		return gdd.updataGood_detail(good_detail);
	}

	@Override
	public int addGood_detail(Good_detail good_detail) {
		// TODO Auto-generated method stub
		return gdd.addGood_detail(good_detail);
	}

	@Override
	public int deleteGood_detail(int goods_id) {
		// TODO Auto-generated method stub
		return gdd.deleteGood_detail(goods_id);
	}

	@Override
	public int getCountByTableName(String tableName) {
		// TODO Auto-generated method stub
		return gdd.getCountByTableName(tableName);
	}

}
