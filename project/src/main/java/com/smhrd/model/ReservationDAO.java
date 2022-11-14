package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class ReservationDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();

	public int insert(ReservationDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insert", dto);
		session.close();

		return row;
	}

	public ArrayList<ReservationDTO> select() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ReservationDTO> list = (ArrayList) session.selectList("select");
		session.close();

		return list;
	}

	public ArrayList<ReservationDTO> my_re_show(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ReservationDTO> list = (ArrayList) session.selectList("my_re_show", email);
		session.close();

		return list;
	}

	public int insertReservation(ReservationDTO reservDTO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertReservation", reservDTO);
		return row;
	}

	public ReservationDTO transfer_num_check_in(BigDecimal transfer_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ReservationDTO info = session.selectOne("transfer_num_check_in", transfer_num);
		session.close();
		return info;
	}
	

	public int transfer_update(ReservationDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("transfer_update", dto);
		session.close();

		return row;
	}
}
