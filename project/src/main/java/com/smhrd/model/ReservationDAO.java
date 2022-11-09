package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class ReservationDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	
	public ArrayList<ReservationDTO> my_re_show(String email){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ReservationDTO> list = (ArrayList)session.selectList("my_re_show",email);
		session.close();
		
		return list;
	}
}
