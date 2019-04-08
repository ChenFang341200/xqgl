package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;

public class Room extends BaseDomain {
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = -5953538097579278829L;
	private int room_id; // 
	private String room_no; // 
	private String build_no; // 
	private String unit_no; // 
	private String door_no; // 
	private String room_model; // 
	private String room_area; // 
	private String room_flag; // 已售,待售

	private int user_id; // 
	private String real_name; // 
	private String ids;
	private String random;

	public void setRoom_id(int room_id){
		this.room_id=room_id;
	}

	public int getRoom_id(){
		return room_id;
	}

	public void setRoom_no(String room_no){
		this.room_no=room_no;
	}

	public String getRoom_no(){
		return room_no;
	}

	public void setBuild_no(String build_no){
		this.build_no=build_no;
	}

	public String getBuild_no(){
		return build_no;
	}

	public void setUnit_no(String unit_no){
		this.unit_no=unit_no;
	}

	public String getUnit_no(){
		return unit_no;
	}

	public void setDoor_no(String door_no){
		this.door_no=door_no;
	}

	public String getDoor_no(){
		return door_no;
	}

	public void setRoom_model(String room_model){
		this.room_model=room_model;
	}

	public String getRoom_model(){
		return room_model;
	}

	public void setRoom_area(String room_area){
		this.room_area=room_area;
	}

	public String getRoom_area(){
		return room_area;
	}

	public void setRoom_flag(String room_flag){
		this.room_flag=room_flag;
	}

	public String getRoom_flag(){
		return room_flag;
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

	public int getUser_id() {
		return user_id;
	}

	public String getReal_name() {
		return real_name;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}

}
