package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;

public class User extends BaseDomain {
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = -460922993085630428L;
	private int user_id; // 
	private String user_name; // 
	private String user_pass; // 
	private String real_name; // 
	private int user_sex; // 1：男  2：女
	private String user_mail; // 
	private String user_card; // 
	private int room_id; // 
	private String info_file; // 
	private String reg_date; // 
	private int user_type; // 1：业主 2：管理员

	private String room_no; // 
	private String ids;
	private String random;
	
	public String getUser_typeDesc(){
		switch (user_type) {
		case 1:
			return "业主";
		case 2:
			return "管理员"; 
		default:
			return "";
		}
	}
	
	public String getUser_sexDesc(){
		switch (user_sex) {
		case 1:
			return "男";
		case 2:
			return "女";
		default:
			return "男";
		}
	}

	public int getUser_id() {
		return user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public String getReal_name() {
		return real_name;
	}

	public int getUser_sex() {
		return user_sex;
	}

	public String getReg_date() {
		return reg_date;
	}

	public int getUser_type() {
		return user_type;
	}

	public String getIds() {
		return ids;
	}

	public String getRandom() {
		return random;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}

	public void setUser_sex(int user_sex) {
		this.user_sex = user_sex;
	}


	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	public void setRandom(String random) {
		this.random = random;
	}

	public String getUser_mail() {
		return user_mail;
	}

	public String getUser_card() {
		return user_card;
	}

	public int getRoom_id() {
		return room_id;
	}

	public String getInfo_file() {
		return info_file;
	}

	public String getRoom_no() {
		return room_no;
	}

	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}

	public void setUser_card(String user_card) {
		this.user_card = user_card;
	}

	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}

	public void setInfo_file(String info_file) {
		this.info_file = info_file;
	}

	public void setRoom_no(String room_no) {
		this.room_no = room_no;
	}
	 
}
