package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;

public class Repairlist extends BaseDomain {
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = 8571009257523572480L;
	private int repairlistid; // 
	private String repaircontent; // 
	private String repairtime; // 
	private String performance; // 
	private double repaircost; // 
	private int room_id; // 

	private String room_no; // 
	private int user_id; // 
	private String real_name; // 
	private String ids;
	private String random;

	public void setRepairlistid(int repairlistid){
		this.repairlistid=repairlistid;
	}

	public int getRepairlistid(){
		return repairlistid;
	}

	public void setRepaircontent(String repaircontent){
		this.repaircontent=repaircontent;
	}

	public String getRepaircontent(){
		return repaircontent;
	}

	public void setRepairtime(String repairtime){
		this.repairtime=repairtime;
	}

	public String getRepairtime(){
		return repairtime;
	}

	public void setPerformance(String performance){
		this.performance=performance;
	}

	public String getPerformance(){
		return performance;
	}

	public void setRepaircost(double repaircost){
		this.repaircost=repaircost;
	}

	public double getRepaircost(){
		return repaircost;
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
