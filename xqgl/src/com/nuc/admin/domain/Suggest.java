package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;

public class Suggest extends BaseDomain {
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = 4009372507275977048L;
	private int suggestid; // 
	private String suggestcontent; // 
	private String suggesttime; // 
	private String replycontent; // 
	private String replytime; // 
	private int user_id; // 

	private String real_name; // 
	private String ids;
	private String random;

	public void setSuggestid(int suggestid){
		this.suggestid=suggestid;
	}

	public int getSuggestid(){
		return suggestid;
	}

	public void setSuggestcontent(String suggestcontent){
		this.suggestcontent=suggestcontent;
	}

	public String getSuggestcontent(){
		return suggestcontent;
	}

	public void setSuggesttime(String suggesttime){
		this.suggesttime=suggesttime;
	}

	public String getSuggesttime(){
		return suggesttime;
	}

	public void setReplycontent(String replycontent){
		this.replycontent=replycontent;
	}

	public String getReplycontent(){
		return replycontent;
	}

	public void setReplytime(String replytime){
		this.replytime=replytime;
	}

	public String getReplytime(){
		return replytime;
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
