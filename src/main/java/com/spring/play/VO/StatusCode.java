package com.spring.play.VO;

public class StatusCode {
	
	//주문 코드번호
	public static final int C_ORDER_REQUEST = 0;	// 고객이 상품 주문 접수
	public static final int C_ORDER_REFUND = 1;     // 고객이 상품 환불 신청
	
	public static final int H_ORDER_ACCEPT = 7;		// 관리자가 고객이 주문한 상품 승인 
	public static final int H_ORDER_REJECT = 8;     // 관리자가 고객이 주문한 상품 거절
	
	
	//게시판 코드번호
	public static final int BO_CLIENT = 0; 	// 고객이 게시판에다 글 작성함 (아직 관리자 답변 안함)
	public static final int BO_ANSWER = 1; 	// 관리자가 고객이 게시글 작성한것 답변한 코드
	public static final int BO_HOST = 2;   	// 관리자가 답변 작성함
	
	
	//상품 코드번호
	public static final int PRO_KIDS = 0;    	// 어린이 상품 코드 0
	public static final int PRO_ADULT = 1;	 	// 어른용 상품 코드 1
	public static final int PRO_DISCOUNT = 2;	// 할인 상품 코드 2
	
	
	
	
}
