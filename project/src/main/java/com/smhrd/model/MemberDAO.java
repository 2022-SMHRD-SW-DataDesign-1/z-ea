package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.smhrd.db.SqlSessionManger;



public class MemberDAO {
	private SqlSessionFactory sqlSessionFactory =
			SqlSessionManger.getSqlSession();
	
	public int join(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();
		
		return row;
	}
	public MemberDTO login(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO check = session.selectOne("login", dto);
		session.close();
		
		return check;
	}
	public MemberDTO login_info(String dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO info = session.selectOne("login_info", dto);
		session.close();
		
		return info;
	}
	public boolean emailCheck(String mb_email_ck) {
		SqlSession session = sqlSessionFactory.openSession(true);
		boolean check = session.selectOne("emailCheck", mb_email_ck);
		session.close();
		
		return check;
	}
	public int update(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("update", dto);
		session.close();
		
		return row;
		
	}
}
