package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class SurveyDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();

	public int insert(SurveyDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int insert = session.insert("insert", dto);
		session.close();

		return insert;
		
	
	}

}
