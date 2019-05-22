package com.electronic_city.pojo;

/**
 * 购物车
 *
 */
public class Shop_cart {
	private int id ;//序号
	private int mid ;//会员id
	private int goods_id;//商品id
	private int num;//商品数量
	private double goods_price ;//单价
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(double goods_price) {
		this.goods_price = goods_price;
	}
	
	
}
