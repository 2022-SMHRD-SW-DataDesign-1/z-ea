package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class TransferDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	
	
	public int transfer_upload(TransferDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("transfer_upload", dto);
		session.close();
		
		return row;
		
	}
	
	public ArrayList<TransferDTO> transfer_all_show(){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<TransferDTO> list = (ArrayList) session.selectList("transfer_all_show");
		session.close();
		
		return list;
		
	}
	
	public TransferDTO transfer_show(BigDecimal transfer_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		TransferDTO transfer = session.selectOne("transfer_show", transfer_num);
		session.close();
		
		return transfer;
	}

}
