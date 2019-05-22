package com.electronic_city.pojo;

/**
 * 订单
 *
 */
public class Order {
	private int id ;//序号
	private int member_id ;//会员id
	private String order_id;//订单号
	private int pay_price;//实际支付价格
	private int is_pay ;//支付状态：0未支付1已支付
	private int  pay_time;//支付时间
	private int ship_time ;//发货时间
	private int is_receive ;//是否发货：0未收货1已收货
	private int receive_time;//收货时间
	private String ship_number ;//快递单号
	private int  status ;//记录状态：1正常0禁用1删除
	private int create_time ;//订单创建时间
	private int update_time ;//订单修改时间

	public int getOrder_id() {
		return id;
	}
	public void setOrder_id(int order_id) {
		this.id = id;
	}
	public int getMid() {
		return member_id;
	}
	public void setMid(int member_id) {
		this.member_id = member_id;
	}
	public String getOrder_number() {
		return order_id;
	}
	public void setOrder_number(String order_number) {
		this.order_id = order_number;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public int getIs_pay() {
		return is_pay;
	}
	public void setIs_pay(int is_pay) {
		this.is_pay = is_pay;
	}
	public int getPay_time() {
		return pay_time;
	}
	public void setPay_time(int pay_time) {
		this.pay_time = pay_time;
	}
	public int getShip_time() {
		return ship_time;
	}
	public void setShip_time(int ship_time) {
		this.ship_time = ship_time;
	}
	public int getIs_receive() {
		return is_receive;
	}
	public void setIs_receive(int is_receive) {
		this.is_receive = is_receive;
	}
	public int getReceive_time() {
		return receive_time;
	}
	public void setReceive_time(int receive_time) {
		this.receive_time = receive_time;
	}
	public String getShip_number() {
		return ship_number;
	}
	public void setShip_number(String ship_number) {
		this.ship_number = ship_number;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getCreate_time() {
		return create_time;
	}
	public void setCreate_time(int create_time) {
		this.create_time = create_time;
	}
	public int getUpdate_time() {
		return update_time;
	}
	public void setUpdate_time(int update_time) {
		this.update_time = update_time;
	}
	

}
