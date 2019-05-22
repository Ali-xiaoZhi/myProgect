package com.electronic_city.dao;

import java.util.List;

import com.electronic_city.pojo.Sort;

/**
 * 商品分类
 * 增删改查
 *
 */
public interface GoodsSortDao {
	public List<Sort> goodsByLimitList(int pageIndex, int pageCount);//查找所有商品分类
	
	public int updateGoodsclass(String sort_name, int sort_id);//修改商品分类
	
	public int addGoodsclass(String sort_name);//增加商品分类
	
	public int deleteData(int deteleId, String tableName);//通用删除
	
	public int getCountByTableName(String tableName);//获取总条数
	
	
	
}
