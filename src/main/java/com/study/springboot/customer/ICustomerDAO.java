package com.study.springboot.customer;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ICustomerDAO {
	public int count(String cId);
	public customerDTO point(String cId);
}
