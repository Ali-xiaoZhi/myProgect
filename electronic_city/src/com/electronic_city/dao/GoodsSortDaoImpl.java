package com.electronic_city.dao;

import com.electronic_city.pojo.Sort;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsSortDaoImpl extends BaseDao implements GoodsSortDao {
	private ResultSet rs=null;
	private int row=0;
	
	
	//获取总条数
	@Override
	public int getCountByTableName(String tableName) {
		String sql="select count(*) from ?";
		Object [] obj = {tableName};
		int count=0;
		try {
			rs=executeQuery(sql,obj);
			while(rs.next()){
				count=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	
	}
	
	//查找所有商品分类
	@Override
	public List<Sort> goodsByLimitList(int pageIndex, int pageCount) {
		List<Sort> goodsclassList=new ArrayList<>();
		String sql="select * from sort limit ?,?";
		Object []obj = {(pageIndex-1)*pageCount,pageCount};
		try {
			rs=executeQuery(sql,obj);
			while(rs.next()){
				Sort sort=new Sort();
				sort.setSort_id(rs.getInt("sort_id"));
				sort.setSort_name(rs.getString("sort_name"));
				goodsclassList.add(sort);
				}
			} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodsclassList;
	}
	//修改商品分类
	@Override
	public int updateGoodsclass(String sort_name, int sort_id) {
		String sql="update sort set sort_name=? where sort_id=?";
		Object []obj  = {sort_name,sort_id};
		row=executeUpdate(sql,obj);
		return row;
		
	}
	
	//增加商品分类
	@Override
	public int addGoodsclass(String sort_name) {
		String sql="insert sort(sort_name) value(?)";
		Object []obj  = {sort_name};
		row=executeUpdate(sql,obj);
		return row;
	}
	//通用删除
	@Override
	public int deleteData(int deteleId, String tableName) {
		int row=0;
		String sql="delete from ? where sort_id=?";
		Object []obj  = {deteleId,tableName};
		row=executeUpdate(sql,obj);
		return row;
		
	}
	

}
