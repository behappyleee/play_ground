package com.spring.play.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.play.service.HostService;

@Controller
public class HostController {
	
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
		
	@Autowired
	HostService service;
	
	// 관리자 메인 페이지
	@RequestMapping("host.ho")
	public String host() {
		
		return "host/host";
	}
	
	
	// 관리자 상품등록 처리 메서드
	@RequestMapping(value="inventory_addPro" , method=RequestMethod.POST)
	public String inventory_addPro(MultipartHttpServletRequest req , Model model) {
		service.inventory_add(req, model);
		return "client/company";
		
	}
		
	// 관리자가 상품 등록하는 메서드
	@RequestMapping("host_product")
	public String host_product(HttpServletRequest req , Model model) {
		
		return "host/host_product";
	}
	
	
	
}
