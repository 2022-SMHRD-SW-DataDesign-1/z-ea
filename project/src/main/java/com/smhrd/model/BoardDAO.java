package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class BoardDAO {
	private SqlSessionFactory sqlSessionFactory =
			SqlSessionManger.getSqlSession();
	//업로드
	public int upload(BoardDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("upload", dto);
		session.close();
		
		return row;
		
	}
	public ArrayList<BoardDTO> selectBoard() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<BoardDTO> list =(ArrayList) session.selectList("selectBoard");
		session.close();
		
		return list;
	}
	public BoardDTO showBoard(BigDecimal board_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		BoardDTO dto = session.selectOne("showBoard", board_num);
		session.close();
		
		return dto;
	}
}
