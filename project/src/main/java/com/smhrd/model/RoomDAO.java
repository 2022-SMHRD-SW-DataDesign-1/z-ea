package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class RoomDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	
	public ArrayList<RoomDTO> my_room_show(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<RoomDTO> list = (ArrayList)session.selectList("my_room_show", email);
		session.close();
		
		return list;
	}
	
}
