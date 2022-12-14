package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class ReviewDAO {
	private SqlSessionFactory sqlSessionFactory =
			SqlSessionManger.getSqlSession();
	
	
	public ArrayList<ReviewDTO> my_review(String email){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ReviewDTO> list = (ArrayList)session.selectList("my_review", email);
		session.close();
		
		return list;
	}
	public ArrayList<ReviewDTO> gc_review(BigDecimal gc_num){
		SqlSession session = sqlSessionFactory.openSession(true);
		
		ArrayList<ReviewDTO> list = (ArrayList)session.selectList("gc_review", gc_num);
		session.close();
		
		return list;
	}
	public int reviewupdate(ReviewDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int update = session.update("reviewupdate", dto);
		session.close();
		
		return update;
	}
	public int review_delete(BigDecimal num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int del = session.delete("review_delete", num);
		session.close();
		
		return del;
	}
	public int review_insert(ReviewDTO dto) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("review_insert",dto);
		session.close();
		return row;
	}
}
