package com.hp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hp.entity.Business;
import com.hp.service.BankService;

@Controller
public class BankController {
@Autowired BankService bankService;
@RequestMapping("/addbank")
public String addbank(Business bus,HttpSession session) {
	int newbank=bankService.insertBus(bus);
	if(newbank>0) {
		System.out.println("添加成功");
		session.setAttribute("bus", bus);
		return "redirect:/selectAll";
	}else {
		return "redirect:/addbank.jsp";
	}
	
}
@RequestMapping("/selectAll")
public String selectAll(HttpSession session) {
	ArrayList<Business> list=bankService.findAll();
	session.setAttribute("list", list);
	return "redirect:/queryall.jsp";
	
}
}
