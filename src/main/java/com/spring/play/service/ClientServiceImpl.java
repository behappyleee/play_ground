package com.spring.play.service;

import java.sql.Timestamp;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.play.VO.StatusCode;
import com.spring.play.VO.UserVO;
import com.spring.play.persistence.ClientDAO;

@Service
public class ClientServiceImpl implements ClientService {

	@Autowired
	ClientDAO dao;
	
	@Autowired 
	BCryptPasswordEncoder passwordEncoder;
	
	// 고객이 회원가입 화면에서 가입 눌렀을 시 고객정보를 DAO 넘겨줌
	@Override
	public void signinAction(HttpServletRequest req, Model model) {
		
		String strId = req.getParameter("userid");
		String strPwd = req.getParameter("password");
		String strName = req.getParameter("username");
		String authority = req.getParameter("authority");
		
		System.out.println("암호화 하기전 비밀번호" + strPwd);
		String encryptPassword = passwordEncoder.encode(strPwd);
		
		Map <String , Object> map = new HashMap <String , Object> ();
		
		map.put("userid", strId);
		map.put("password", encryptPassword);
		map.put("username", strName);
		map.put("authority", authority);
	
		int insertCnt = dao.insertClient(map);
		
		if(insertCnt == 1) {
			insertCnt = 3;
		}
		System.out.println("insertCnt:(회원가입) :" + insertCnt);
		req.setAttribute("insertCnt", insertCnt);
	}

	//로그인 하였을시 ID/PWD 맞는지 확인하여 주는 메서드
	@Override
	public void loginAction(HttpServletRequest req, Model model) {
	
	String strId = req.getParameter("userid");
	String strPwd = req.getParameter("password");
	//매개변수를 복수개 넘길때는 Map 이나 VO 에 넣어서 전달 해준다
	Map <String , Object> map = new HashMap <String , Object> ();	
	
	map.put("userid", strId);
	map.put("password", strPwd);
	
	//ID랑 패스워드 맞는 지 체크하는 메서드
	int insertCnt = dao.idPwdCheck(map);
	
	if(insertCnt == 1) {
		req.getSession().setAttribute("clientId", strId);
		if(strId.equals("host")) {
			insertCnt = 7;
		}
	}
	
		model.addAttribute("selectCnt", insertCnt);
		System.out.println("selectCnt(로그인) : " + insertCnt );
		
	}
	
	// 회원가입 화면에서 중복여부 
	@Override
	public void confirmId(HttpServletRequest req, Model model) {
		
		String strId = req.getParameter("confirmId");
		
		int selectCnt = dao.confirmId(strId);
		model.addAttribute("selectCnt" , selectCnt);
		
		
	}

	
	
	
	
}
