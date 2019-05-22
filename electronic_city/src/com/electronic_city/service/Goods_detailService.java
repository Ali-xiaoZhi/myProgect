package com.electronic_city.service;

import com.electronic_city.pojo.Good_detail;

import java.util.List;

public interface Goods_detailService {
	
	public List<Good_detail> getGood_detailList(int pageIndex, int Good_detailPageCount);//查询所有商品
	
	public int updataGood_detail(Good_detail good_detail);//修改商品
	
	public int addGood_detail(Good_detail good_detail);//增加商品
	
	public int deleteGood_detail(int goods_id);//删除商品
	
	public int getCountByTableName(String tableName);

	public int pagesByTableCount(String tableName, int good_defailPageCount);
}
