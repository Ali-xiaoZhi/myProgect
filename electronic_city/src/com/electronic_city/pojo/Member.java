package com.electronic_city.pojo;

/**
 * 会员
 *
 */
public class Member {
	private int member_id ;//会员id
	private String member_nick ;//会员昵称
	private String member_name ;//会员账号
	private String password ;//密码
	private String  address ;//地址
	private String  phone ;//手机号
	private String  email ;//邮箱
	private int points ;//积分
	private String head_pic_url ;//头像地址

	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getMember_nick() {
		return member_nick;
	}
	public void setMember_nick(String member_nick) {
		this.member_nick = member_nick;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	public String getHead_pic_url() {
		return head_pic_url;
	}
	public void setHead_pic_url(String head_pic_url) {
		this.head_pic_url = head_pic_url;
	}
	
	
	
	
	
	
	
	
	
	
}
