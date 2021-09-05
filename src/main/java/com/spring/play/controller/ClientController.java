package com.spring.play.controller;

import java.util.HashMap;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.play.persistence.ClientDAO;
import com.spring.play.service.ClientService;

@Controller
public class ClientController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	
	@Autowired
	ClientService service;   
	
	@Autowired
	ClientDAO dao;   
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;  // 비밀번호 암호화 객체
	
	
	//홈페이지의 첫 페이지
	@RequestMapping("main")
	public String main(HttpServletRequest req , Model model) {
		logger.info("url ==> main");	// System.out.println 을 사용하면 서버를 재시작하여야 하지만 logger 를 사용시 서버 재시작 필요없으므로 logger 사용하기
		model.addAttribute("loginCnt" , 2);
		return "client/main";
	}
	
	// 로그인 클릭 맵핑
	@RequestMapping("/client/login")
	public String login(HttpServletRequest req , Model model) {
		logger.info("url ==> lgoin");
		return "client/login";
	}
	
//	// 로그인 한 ID/PWD 맞는지 확인
//	@RequestMapping("loginAction")
//	public String loginAction(HttpServletRequest req , Model model) {
//		logger.info("url ==> loginAction");
//		// service.loginAction(req, model);
//		return "client/loginAction";
//	}
	
	// 회원가입 버튼 눌렀을시 회원가입 화면 보여주는 메서드 
	@RequestMapping("signin")
	public String signin(HttpServletRequest req , Model model) {
		logger.info("url ==> signin");
		return "client/signin";
	}
	
	// 회원가입 되었는지 성공 여부 알려주는 페이지 
	@RequestMapping("signInAction.an")
	public String signinAction(HttpServletRequest req , Model model) {
		logger.info("url ==> signInAction");
		service.signinAction(req, model);
		return "client/main";
	}
	
	//회원가입시 아이디 중복여부 알려줌
	@RequestMapping("confirmId.lo")
	public String confirmId (HttpServletRequest req , Model model) {
		service.confirmId(req, model);
		return "client/confirmId";
	}
	
	// 회사소개 페이지
	@RequestMapping("company.an")
	public String company(HttpServletRequest req , Model model) {
		logger.info("url ==> company");
		return "client/company";
	}
	
	// 관리자가 상품 올린것 보여주는 페이지
	@RequestMapping("product")
	public String product(HttpServletRequest req , Model model) {
		logger.info("url ==> product");
		return "client/product";
	}
	
	// 상단에서 마이페이지 눌렀을 시 마이페이지 보여주는 메서드
	@RequestMapping("mypage.lo")
	public String mypage(HttpServletRequest req , Model model) {
		
		return "";
	}
	
	// 회원가입 처리 페이지로 이동
	@RequestMapping("insertUser")
	public String insertUser(HttpServletRequest req, Model model) {
		logger.info("url ==> insertUser");
		service.signinAction(req, model);
		return "client/login";
		
	}
	
	@RequestMapping("toplogin")
	public String toplogin() {
		return "common/toplogin";
	}
	
	
}
