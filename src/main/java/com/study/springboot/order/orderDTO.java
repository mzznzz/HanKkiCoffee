package com.study.springboot.order;

import lombok.Data;


@Data
public class orderDTO {

	private String oId;
	private String cId;
	private String oDate;
	private String takes;
	private String payment;
}
