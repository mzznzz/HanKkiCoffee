package com.study.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.springboot.customer.ICustomerDAO;
import com.study.springboot.order.IOrderDAO;
import com.study.springboot.order.orderDTO;
import com.study.springboot.orderdetail.IOrderdetailDAO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MyController {

//	@Autowired
//	orderDTO orderdto;
	
	@Autowired
	IOrderDAO orderdao;
	
	@Autowired
	IOrderdetailDAO orderdetaildao;
	
	@Autowired
	ICustomerDAO customerdao;
	
    @RequestMapping("/")
    public String root() throws Exception{
    	System.out.println("메인이동");
        return "main";
    }
	
    @RequestMapping("/menu")
    public String menuSelect(Model model, HttpServletRequest request) {
    	model.addAttribute("takes", request.getParameter("takes"));
    	System.out.println("메뉴선택");
        return "menu";
    }
    
    @RequestMapping("/addMenu")
    public void addMenu(Model model, HttpServletRequest request) {
    	System.out.println("전달 받음");
    	orderdetaildao.addMenu(request.getParameter("menu"),
    							request.getParameter("hotIce"),
    							request.getParameter("price"),
    							request.getParameter("quantity"));
    }
    
    @RequestMapping("/pay")
    public String pay(Model model, HttpServletRequest request) {
    	model.addAttribute("takes", request.getParameter("takes"));
    	model.addAttribute("menuDao", orderdetaildao.menuListDao());
    	//System.out.println(orderdetaildao.menuListDao());
    	System.out.println("결제");
        return "pay";
    }
    
    @RequestMapping("/receipt")
    public String receipt(Model model, HttpServletRequest request) {
    	System.out.println("영수증");
    	orderdao.createOrder(request.getParameter("takes"), request.getParameter("cId"));
//    	model.addAttribute("nowOrder", orderdao.nowOrder());
    	System.out.println(orderdao.nowOrder());
    	model.addAttribute("oId", orderdao.nowOrder().getOId());
    	model.addAttribute("oDate", orderdao.nowOrder().getODate());
    	model.addAttribute("takes", orderdao.nowOrder().getTakes());
    	model.addAttribute("menuDao", orderdetaildao.menuListDao());
    	orderdetaildao.orderComplete(orderdao.nowOrder().getOId());
    	customerdao.count(orderdao.nowOrder().getCId());
//    	model.addAttribute("customer", customerdao.point(orderdao.nowOrder().getCId()));
    	System.out.println(customerdao.point(orderdao.nowOrder().getCId()));
    	model.addAttribute("cId", request.getParameter("cId"));
    	model.addAttribute("cName", customerdao.point(orderdao.nowOrder().getCId()).getCName());
    	model.addAttribute("cVisits", customerdao.point(orderdao.nowOrder().getCId()).getCVisits());
        return "receipt";
    }
	
}
