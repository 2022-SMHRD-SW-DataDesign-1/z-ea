package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class GlampingDAO {
	private SqlSessionFactory sqlSessionFactory =
			SqlSessionManger.getSqlSession();
	
	public ArrayList<GlampingDTO> my_glamping_show(String email){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<GlampingDTO> list = (ArrayList)session.selectList("my_glamping_show", email);
		session.close();
		
		return list;
	}
	public GlampingDTO transfer_num_glamping_show(BigDecimal transfer_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		GlampingDTO info = session.selectOne("transfer_num_glamping_show",transfer_num);
		session.close();
		
		return info;
	}
}
