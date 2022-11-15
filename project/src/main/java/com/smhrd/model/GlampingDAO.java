package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class GlampingDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();

	public GlampingDTO my_glamping_show(BigDecimal gc_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		GlampingDTO dto = session.selectOne("my_glamping_show", gc_num);
		session.close();

		return dto;
	}

	public GlampingDTO transfer_num_glamping_show(BigDecimal transfer_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		GlampingDTO info = session.selectOne("transfer_num_glamping_show", transfer_num);
		session.close();

		return info;
	}

	public ArrayList<GlampingDTO> reserv_search(String gc_name) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<GlampingDTO> dto = (ArrayList) session.selectList("reserv_search", gc_name);
		session.close();

		return dto;
	}
}
