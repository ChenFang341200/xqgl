package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;

public class Carfee extends BaseDomain {
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = -7090169503412748275L;
	private int carfee_id; // 
	private double carfee_price; // 
	private String carfee_start; // 
	private String carfee_end; // 
	private double carfee_money; // 
	private String carno; // 
	private int user_id; // 

	private String real_name; // 
	private String ids;
	private String random;

	public void setCarfee_id(int carfee_id){
		this.carfee_id=carfee_id;
	}

	public int getCarfee_id(){
		return carfee_id;
	}

	public void setCarfee_price(double carfee_price){
		this.carfee_price=carfee_price;
	}

	public double getCarfee_price(){
		return carfee_price;
	}

	public void setCarfee_start(String carfee_start){
		this.carfee_start=carfee_start;
	}

	public String getCarfee_start(){
		return carfee_start;
	}

	public void setCarfee_end(String carfee_end){
		this.carfee_end=carfee_end;
	}

	public String getCarfee_end(){
		return carfee_end;
	}

	public void setCarfee_money(double carfee_money){
		this.carfee_money=carfee_money;
	}

	public double getCarfee_money(){
		return carfee_money;
	}

	public void setCarno(String carno){
		this.carno=carno;
	}

	public String getCarno(){
		return carno;
	}

	public void setUser_id(int user_id){
		this.user_id=user_id;
	}

	public int getUser_id(){
		return user_id;
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

	public String getReal_name() {
		return real_name;
	}

	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}

}
