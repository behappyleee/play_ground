package com.spring.play.persistence;

import java.util.Map;

import com.spring.play.VO.UserVO;

public interface ClientDAO {

	// 회원가입처리(테이블에 고객정보 집어넣기)
	public int insertClient(Map <String , Object> map);
		
	// 로그인처리(ID PWD 맞는지 체크해주는 메서드)
	public int idPwdCheck(Map <String , Object> map);

	// 아이디 중복 여부(중복되는 ID가 있는지 검사)
	public int confirmId(String id);
	
	// 회원가입 처리
	public int insertUser(Map<String , String> map);
		
	// 회원상세 정보
	public Map<String , Object> selectUser(String userid);
	
	
	
}
