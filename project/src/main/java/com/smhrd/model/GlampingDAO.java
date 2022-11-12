package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class GlampingDAO {
	private SqlSessionFactory sqlSessionFactory =
			SqlSessionManger.getSqlSession();
	
	public GlampingDTO my_glamping_show(BigDecimal gc_num){
		SqlSession session = sqlSessionFactory.openSession(true);
		GlampingDTO dto =session.selectOne("my_glamping_show", gc_num);
		session.close();
		
		return dto;
	}
}
