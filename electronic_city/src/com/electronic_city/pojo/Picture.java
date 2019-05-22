package com.electronic_city.pojo;

/**
 * 商品图片
 *
 */
public class Picture {
	private int pid ;//图片id
	private String purl ;//图片地址
	private int goods_id ;//商品id
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPurl() {
		return purl;
	}
	public void setPurl(String purl) {
		this.purl = purl;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	
}
