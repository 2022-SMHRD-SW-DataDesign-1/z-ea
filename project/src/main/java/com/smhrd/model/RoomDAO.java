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
	
<<<<<<< HEAD
	public ArrayList<RoomDTO> showroom(int gc_num){
=======
	public ArrayList<RoomDTO> room_select(BigDecimal gc_num){
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-SW-DataDesign-1/z-ea.git
		SqlSession session = sqlSessionFactory.openSession(true);
<<<<<<< HEAD
		ArrayList<RoomDTO> list = (ArrayList) session.selectList("showroom",gc_num);
=======
		ArrayList<RoomDTO> list = (ArrayList)session.selectList("room_select",gc_num);
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-SW-DataDesign-1/z-ea.git
		session.close();
		
		return list;
	}
	
}
