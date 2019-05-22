package com.electronic_city.dao;

import com.electronic_city.pojo.Good_detail;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Good_detail_DaoImpl extends BaseDao implements Good_detail_Dao {
	
	
	ResultSet rs=null;
	int row=0;
	
	//查询所有商品
	@Override
	public List<Good_detail> getGood_detailList(int pageIndex, int Good_detailPageCount) {
		// TODO Auto-generated method stub
		
		List<Good_detail> Good_detailList=new ArrayList<>();
		String sql="select * from goods limit ?,?";
		Object []obj = {pageIndex,(pageIndex-1)*Good_detailPageCount};
		
		try {
			rs=executeQuery(sql,obj);
			while(rs.next()){
				Good_detail g=new Good_detail();
				g.setGoods_id(rs.getInt(1));
				g.setGoods_name(rs.getString(2));
				g.setSort_id(rs.getInt(3));
				g.setPrice(rs.getDouble(4));
				g.setInventory(rs.getInt(5));
				g.setGoods_detail(rs.getString(6));
				g.setGoods_subtitle(rs.getString(7));
				g.setStatus(rs.getInt(8));
			
				Good_detailList.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Good_detailList;
	}
	//修改商品
	@Override
	public int updataGood_detail(Good_detail good_detail) {
		// TODO Auto-generated method stub
		String sql="update goods set goods_name=?,sort_id=?,price=?,inventory=?,goods_detail=?,goods_subtitle=?,default where goods_id=?";
		Object[] obj= {good_detail.getGoods_name(),good_detail.getSort_id(),good_detail.getPrice(),good_detail.getInventory(),good_detail.getGoods_detail(),good_detail.getGoods_subtitle()};
		return executeUpdate(sql, obj);
	} 
		
			
	//增加商品
	@Override
	public int addGood_detail(Good_detail good_detail) {
		// TODO Auto-generated method stub
		String sql="insert into goods values(defaullt,?,?,?,?,?,?,defaullt)";
		Object[] obj= {good_detail.getGoods_name(),good_detail.getSort_id(),good_detail.getPrice(),good_detail.getInventory(),good_detail.getGoods_detail(),good_detail.getGoods_subtitle()};
		return this.executeUpdate(sql, obj);
	}
	//删除商品
	@Override
	public int deleteGood_detail(int goods_id) {
		// TODO Auto-generated method stub
		String sql="delete from goods where goods_id=?";
		Object []obj = {goods_id};
		return executeUpdate(sql,obj);
	}
	
	
	//获取总条数
	@Override
	public int getCountByTableName(String tableName) {
		// TODO Auto-generated method stub
		String sql="select count(*) from ?";
		Object []obj = {tableName};

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

}
