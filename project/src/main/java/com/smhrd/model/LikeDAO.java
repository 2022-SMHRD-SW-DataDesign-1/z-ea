package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class LikeDAO {
	private SqlSessionFactory sqlSessionFactory =
			SqlSessionManger.getSqlSession();
	public int like_insert(LikeDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("like_insert", dto);
		session.close();
		return row;
		
	}
}
