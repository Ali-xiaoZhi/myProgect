package com.electronic_city.service;

import com.electronic_city.dao.GoodsSortDao;
import com.electronic_city.dao.GoodsSortDaoImpl;
import com.electronic_city.pojo.Sort;

import java.util.List;

public class GoodsSortServiceImpl implements GoodsSortService {
	GoodsSortDao m=new GoodsSortDaoImpl();
	boolean b=false;
	public boolean getBoolean(int row){
		if(row>0){
			b=true;
			
		}else{
			b=false;
		}
		return b;
	}
	
	//获取总页数
	@Override
	public int pagesByTableCount(String tableName, int pageCount) {
		
			int pages=0;
			int count=m.getCountByTableName(tableName);
			if(count%pageCount!=0){
				pages=count/pageCount+1;
			}else{
				pages=count/pageCount;
			}
			return pages;
		}

	
	@Override
	public boolean deleteByDeleteIdByTableName(int deteleId, String tableName) {
		// TODO Auto-generated method stub
		return getBoolean(m.deleteData(deteleId, tableName));
	}
	@Override
	public List<Sort> getGoodsclassByLimitList(int pageIndex, int pageCount) {
		// TODO Auto-generated method stub
		return m.goodsByLimitList(pageIndex, pageCount);
	}
	@Override
	public boolean updateGoodsclass(String sort_name, int sort_id) {
		// TODO Auto-generated method stub
		return getBoolean(m.updateGoodsclass(sort_name, sort_id));
	}
	@Override
	public boolean addGoodsclass(String sort_name) {
		// TODO Auto-generated method stub
		return getBoolean(m.addGoodsclass(sort_name));
	}
	
	

	

}
