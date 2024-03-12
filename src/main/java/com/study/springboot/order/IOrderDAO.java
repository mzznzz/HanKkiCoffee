package com.study.springboot.order;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.orderdetail.orderdetailDTO;

@Mapper
public interface IOrderDAO {

	public List<orderDTO> orderListDao();
	public int createOrder(String takes, String cId);
	public orderDTO nowOrder();
}
