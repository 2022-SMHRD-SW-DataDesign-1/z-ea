package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class CommentDAO {
	private SqlSessionFactory sqlSessionFactory =
			SqlSessionManger.getSqlSession();
	
	public int insert(CommentDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int insert = session.insert("insert",dto);
		session.close();
		
		return insert;
	}
	
	public ArrayList<CommentDTO> show_comment(BigDecimal cminfo){//(CommentDTO cminfo)
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<CommentDTO> list = (ArrayList)session.selectList("show_comment", cminfo);
		session.close();
		
		return list;
		
	}
}
