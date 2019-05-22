package com.electronic_city.service;

import java.util.List;

import com.electronic_city.pojo.Sort;

/**
 * 数据访问层
 *
 */
public interface GoodsSortService {
	
	public boolean deleteByDeleteIdByTableName(int deteleId, String tableName);
	public int pagesByTableCount(String tableName, int pageCount);
	
	public List<Sort> getGoodsclassByLimitList(int pageIndex, int pageCount);
	public boolean updateGoodsclass(String sort_name, int sort_id);
	public boolean addGoodsclass(String sort_name);
	
}
