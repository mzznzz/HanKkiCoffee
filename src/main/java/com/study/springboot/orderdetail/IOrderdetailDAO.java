package com.study.springboot.orderdetail;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IOrderdetailDAO {

	public List<orderdetailDTO> menuListDao();
//  public int deleteDao(String id);
    public int addMenu(String menu, String hotIce, String price, String quantity);
    public int orderComplete(String oId);
}
