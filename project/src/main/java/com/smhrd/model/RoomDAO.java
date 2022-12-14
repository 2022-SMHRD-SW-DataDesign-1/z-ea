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
		ArrayList<RoomDTO> list = (ArrayList) session.selectList("my_room_show", email);
		session.close();

		return list;
	}

	public RoomDTO transfer_num_room_show(BigDecimal transfer_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		RoomDTO info = session.selectOne("transfer_num_room_show", transfer_num);
		session.close();

		return info;
	}

	public ArrayList<RoomDTO> room_select(BigDecimal gc_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<RoomDTO> list = (ArrayList) session.selectList("room_select", gc_num);
		session.close();

		return list;
	}

}
