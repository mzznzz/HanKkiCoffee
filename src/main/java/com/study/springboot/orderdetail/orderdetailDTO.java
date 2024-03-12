package com.study.springboot.orderdetail;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
public class orderdetailDTO {

	private String menu;
	private String oId;
	private String hotIce;
	private String price;
	private String quantity;
	
}
