package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class TransferDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	
	// 업로드
	public int upload(TransferDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("upload", dto);
		session.close();
		
		return row;
		
	}
	
	public ArrayList<TransferDTO> select(){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<TransferDTO> list = (ArrayList) session.selectList("select");
		session.close();
		
		return list;
		
	}

}
