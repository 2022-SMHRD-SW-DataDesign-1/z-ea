package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.smhrd.db.SqlSessionManger;



public class MemberDAO {
	private SqlSessionFactory sqlSessionFactory =
			SqlSessionManger.getSqlSession();
	//가입
	public int join(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();
		
		return row;
	}//로그인
	public MemberDTO login(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO check = session.selectOne("login", dto);
		session.close();
		
		return check;
	}//회원가입한 정보 가져오기
	public MemberDTO login_info(String dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO info = session.selectOne("login_info", dto);
		session.close();
		
		return info;
	}//중복체크
	public boolean emailCheck(String mb_email_ck) {
		SqlSession session = sqlSessionFactory.openSession(true);
		boolean check = session.selectOne("emailCheck", mb_email_ck);
		session.close();
		
		return check;
	}// 정보수정
	public int update(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("update", dto);
		session.close();
		
		return row;
		
	}
}
