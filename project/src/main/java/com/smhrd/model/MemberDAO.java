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
}
