package com.smhrd.model;

import java.math.BigDecimal;

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
	public int showLike(LikeDTO like) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int liked = session.selectOne("showLike", like);
		session.close();
		return liked;
	}
	public int countLike(BigDecimal gc_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int count = session.selectOne("countLike", gc_num);
		session.close();
		return count;
	
}}
