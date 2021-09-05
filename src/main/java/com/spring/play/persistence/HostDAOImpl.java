package com.spring.play.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.play.VO.ProductVO;

@Repository
public class  HostDAOImpl implements HostDAO{

	@Autowired
	SqlSession sqlSession;
	
	// 관리자가 상품등록한것 DB에 넣는 메서드
	@Override
	public int inventory_add(ProductVO vo) {
		
		int insertCnt = 0;
		
		HostDAO dao  = sqlSession.getMapper(HostDAO.class);
		insertCnt = dao.inventory_add(vo); 
		
		System.out.println(insertCnt == 1 ? "상품등록 성공" : "상품 등록 실패" );
		System.out.println("Product DAO");
		return insertCnt;
	}

	
	
	
	
	
	
}
