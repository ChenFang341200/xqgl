package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;

public class Faci extends BaseDomain {
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = -8634225372316451876L;
	private int faci_id; // 
	private String faci_no; // 
	private String faci_name; // 
	private String faci_price; // 
	private String faci_loc; // 

	private String ids;
	private String random;

	public void setFaci_id(int faci_id){
		this.faci_id=faci_id;
	}

	public int getFaci_id(){
		return faci_id;
	}

	public void setFaci_no(String faci_no){
		this.faci_no=faci_no;
	}

	public String getFaci_no(){
		return faci_no;
	}

	public void setFaci_name(String faci_name){
		this.faci_name=faci_name;
	}

	public String getFaci_name(){
		return faci_name;
	}

	public void setFaci_price(String faci_price){
		this.faci_price=faci_price;
	}

	public String getFaci_price(){
		return faci_price;
	}

	public void setFaci_loc(String faci_loc){
		this.faci_loc=faci_loc;
	}

	public String getFaci_loc(){
		return faci_loc;
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

}
