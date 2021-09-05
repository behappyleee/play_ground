package com.spring.play.persistence;

import java.util.Map;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.play.VO.UserVO;

@Repository
public class ClientDAOImpl implements ClientDAO {
	
	@Autowired
	SqlSession sqlSession;

	//회원가입할때 고객정보 테이블에 넣어주는 메서드
	@Override
	public int insertClient(Map <String , Object> map) {
		
		return sqlSession.insert("com.spring.kosmopj.persistence.ClientDAO.signinAction", map);
		
	}

	//로그인 할 시 ID/PWD 매칭 하는 메서드
	@Override
	public int idPwdCheck(Map <String , Object> map) {
		
		return sqlSession.selectOne("com.spring.kosmopj.persistence.ClientDAO.loginCheck", map);
		
	}

	// 회원가입 페이지 에서 아이디 중복여부 클릭시 중복여부 확인하는 메서드
	@Override
	public int confirmId(String id) {
		
		return sqlSession.selectOne("com.spring.kosmopj.persistence.ClientDAO.confirmId" , id);
	}

	@Override
	public int insertUser(Map<String, String> map) {
		
		return sqlSession.insert("com.spring.kosmopj.persistence.ClientDAO.insertUser" , map);
	}

	@Override
	public Map<String, Object> selectUser(String userid) {
		
		return sqlSession.selectOne("com.spring.kosmopj.persistence.ClientDAO.selectUser", userid);
	}
	
	
	
	
}
