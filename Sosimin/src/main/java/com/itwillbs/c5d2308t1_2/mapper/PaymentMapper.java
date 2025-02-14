package com.itwillbs.c5d2308t1_2.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PaymentMapper {

	// 토큰 중복 처리를 위한 아이디 조회
	String selectAccessToken(Map<String, Object> map);

	// 엑세스토큰 저장
	void insertAccessToken(Map<String, Object> map);

	// 엑세스토큰 업데이트
	void updateAccessToken(Map<String, Object> map);

	// 페이 가입 중복 처리를 위한 아이디 조회
	int selectPay(Map<String, Object> map);

	// 페이 가입
	int insertPay(Map<String, Object> map);

	// 사용자 페이 가입 정보 불러오기
	Map<String, Object> selectPayInfo(String member_id);

	// 페이 사용 내역 불러오기
	List<Map<String, Object>> selectPayHistory(Map<String, Object> map);

	// 페이 내역 개수 세기(페이징)
	int selectPayHistoryCount(Map<String, Object> map);

}
