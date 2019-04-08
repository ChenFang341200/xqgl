package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;

public class Worker extends BaseDomain {
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = 2155879472278904773L;
	private int worker_id; // 
	private String worker_no; // 
	private String worker_name; // 
	private int worker_sex; // 1：男  2：女
	private String worker_birth; // 
	private String worker_content; // 
	private int worker_type; // 1：保洁人员 2：保安人员 3:维修人员

	private String ids;
	private String random;
	
	public String getWorker_typeDesc(){
		switch (worker_type) {
		case 1:
			return "保洁人员";
		case 2:
			return "保安人员"; 
		case 3:
			return "维修人员"; 
		default:
			return "";
		}
	}
	
	public String getWorker_sexDesc(){
		switch (worker_sex) {
		case 1:
			return "男";
		case 2:
			return "女";
		default:
			return "男";
		}
	}

	public void setWorker_id(int worker_id){
		this.worker_id=worker_id;
	}

	public int getWorker_id(){
		return worker_id;
	}

	public void setWorker_no(String worker_no){
		this.worker_no=worker_no;
	}

	public String getWorker_no(){
		return worker_no;
	}

	public void setWorker_name(String worker_name){
		this.worker_name=worker_name;
	}

	public String getWorker_name(){
		return worker_name;
	}

	public void setWorker_sex(int worker_sex){
		this.worker_sex=worker_sex;
	}

	public int getWorker_sex(){
		return worker_sex;
	}

	public void setWorker_birth(String worker_birth){
		this.worker_birth=worker_birth;
	}

	public String getWorker_birth(){
		return worker_birth;
	}

	public void setWorker_content(String worker_content){
		this.worker_content=worker_content;
	}

	public String getWorker_content(){
		return worker_content;
	}

	public void setWorker_type(int worker_type){
		this.worker_type=worker_type;
	}

	public int getWorker_type(){
		return worker_type;
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
