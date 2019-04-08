package com.nuc.admin.domain;

import com.soft.common.domain.BaseDomain;
/**
 * <huazhu>
 *
 * @Author: ChenChen
 * @Date: 2019/4/3 15:22
 */
public class Car extends BaseDomain  {
    private static final long serialVersionUID = -7657755307893496925L;
    private int car_id; //
    private String car_no; //
    private String car_area; //
    private String car_loc; //
    private String car_flag; // 已售,已租,闲置

    private String ids;
    private String random;

    public void setCar_id(int car_id){
        this.car_id=car_id;
    }

    public int getCar_id(){
        return car_id;
    }

    public void setCar_no(String car_no){
        this.car_no=car_no;
    }

    public String getCar_no(){
        return car_no;
    }

    public void setCar_area(String car_area){
        this.car_area=car_area;
    }

    public String getCar_area(){
        return car_area;
    }

    public void setCar_loc(String car_loc){
        this.car_loc=car_loc;
    }

    public String getCar_loc(){
        return car_loc;
    }

    public void setCar_flag(String car_flag){
        this.car_flag=car_flag;
    }

    public String getCar_flag(){
        return car_flag;
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
