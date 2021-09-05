package com.spring.play.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

//SERVICE 기능 정의서
public interface ClientService {

	//회원가입처리
	public void signinAction(HttpServletRequest req , Model model);

	//로그인 처리
	public void loginAction(HttpServletRequest req, Model model);
	
	//아이디 중복확인 처리
	public void confirmId(HttpServletRequest req, Model model);
	
	
//	// 회원수정 인증 및 상세 처리
//	public void modifyClient(HttpServletRequest req, HttpServletResponse res);
//	
//	// 회원수정 변경처리
//	public void modifyAction(HttpServletRequest req, HttpServletResponse res);
//	
//	// 회원 삭제 인증 및 탈퇴처리
//	public void deleteClient(HttpServletRequest req , HttpServletResponse res);
//	
//	// host 가 상품등록한것을 신상품 페이지에 보여주기
//	public void newProduct(HttpServletRequest req , HttpServletResponse res);
	
	
	
	
}
