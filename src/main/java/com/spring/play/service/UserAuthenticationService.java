package com.spring.play.service;

import java.util.ArrayList;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.spring.play.VO.UserVO;

public class UserAuthenticationService implements UserDetailsService {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	// security-context.xml 에서 주입 
	public UserAuthenticationService (SqlSessionTemplate sqlSession) {
		this.sqlSession=sqlSession;
	}
	
	@Override
	public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
		System.out.println("Service loadByUsername");
		Map <String , Object> user = sqlSession.selectOne("com.spring.kosmopj.persistence.ClientDAO.selectUser", userid);
		System.out.println("로그인 체크 ==> " + userid);
		
		// 인증실패 시 인위적으로 예외 발생 
		if(user == null) throw new UsernameNotFoundException(userid);
		
		List<GrantedAuthority> authority = new ArrayList<GrantedAuthority> ();
		authority.add(new SimpleGrantedAuthority(user.get("AUTHORITY").toString() ));   //컬럼명이 대문자이기 때문에 반드시 대문자로 준다
		
		// 주의사항: 오라클에서는 필드명을 대문자로 취급
		// 오라클에서는 BigInteger 관련 오류가 발생할 수 있으므로 아래와 같이 처리
		// 사용자가 입력한 값과 테이블의 USERNAME , PASSWORD를 비교해서 비밀번호가 불 일치시 UserLoginFailureHandler, 일치시에는 UserLoginSuccessHandler로 자동으로 이동
		// 테이블의 암호화된 비밀번호화 사용자가 입력한 비밀번호를 내부적으로 비교처리
		
		// 암호화 비밀번호화 사용자가 입력한 비밀번호를 비교
		return new UserVO(user.get("USERNAME").toString() , user.get("PASSWORD").toString() , 
						 (Integer)Integer.valueOf(user.get("ENABLED").toString()) ==1 , true , true , true , authority , user.get("USERID").toString() );
		
		
	}

	
	
}
