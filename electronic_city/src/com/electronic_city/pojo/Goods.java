package com.electronic_city.pojo;

/**
 * 商品
 *
 */
public class Goods {
	private int goods_id ;//商品编号
	private String goods_name ;//商品名
	private String goods_subtitle ;//商品小标题
	private String sort_id ;//商品类别
	private double price ;//商品价格
	private int  inventory ;//库存数量
	private String  goods_detail ;//商品详情
	private int  status ;//商品上下架状态
	private String pic ;//单张图片url
	private int sale ;//销量

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getPic_id() {
		return pic_id;
	}

	public void setPic_id(String pic_id) {
		this.pic_id = pic_id;
	}

	private String pic_id;//图片编码

	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getSort_id() {
		return sort_id;
	}
	public void setSort_id(String sort_id) {
		this.sort_id = sort_id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getInventory() {
		return inventory;
	}
	public void setInventory(int inventory) {
		this.inventory = inventory;
	}
	public String getGoods_subtitle() {
		return goods_subtitle;
	}
	public void setGoods_subtitle(String goods_subtitle) {
		this.goods_subtitle = goods_subtitle;
	}
	public String getGoods_detail() {
		return goods_detail;
	}
	public void setGoods_detail(String goods_detail) {
		this.goods_detail = goods_detail;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
