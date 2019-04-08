package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;

public class Wyfee extends BaseDomain {
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = -4425626732894719420L;
	private int wyfee_id; // 
	private double wyfee_price; // 
	private String wyfee_start; // 
	private String wyfee_end; // 
	private double wyfee_money; // 
	private int room_id; // 

	private String room_no; // 
	private int user_id; // 
	private String real_name; // 
	private String ids;
	private String random;

	public void setWyfee_id(int wyfee_id){
		this.wyfee_id=wyfee_id;
	}

	public int getWyfee_id(){
		return wyfee_id;
	}

	public void setWyfee_price(double wyfee_price){
		this.wyfee_price=wyfee_price;
	}

	public double getWyfee_price(){
		return wyfee_price;
	}

	public void setWyfee_start(String wyfee_start){
		this.wyfee_start=wyfee_start;
	}

	public String getWyfee_start(){
		return wyfee_start;
	}

	public void setWyfee_end(String wyfee_end){
		this.wyfee_end=wyfee_end;
	}

	public String getWyfee_end(){
		return wyfee_end;
	}

	public void setWyfee_money(double wyfee_money){
		this.wyfee_money=wyfee_money;
	}

	public double getWyfee_money(){
		return wyfee_money;
	}

	public void setRoom_id(int room_id){
		this.room_id=room_id;
	}

	public int getRoom_id(){
		return room_id;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	public String getIds() {
		return ids;
	}

	public void setRandom(String random) {
		this.random = random;
	}

	public String getRandom() {
		return random;
	}

	public String getRoom_no() {
		return room_no;
	}

	public int getUser_id() {
		return user_id;
	}

	public String getReal_name() {
		return real_name;
	}

	public void setRoom_no(String room_no) {
		this.room_no = room_no;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}

}
