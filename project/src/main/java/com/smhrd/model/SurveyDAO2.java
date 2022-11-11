package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class SurveyDAO2 {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();

	public int survey(SurveyDTO2 dto) {

		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("survey", dto);
		session.close();

		return row;
		
	}
	
	public boolean surv_check(String email ) {
		SqlSession session = sqlSessionFactory.openSession(true);
		boolean ck = session.selectOne("surv_check",email);
		session.close();
		
		return ck;
		
	}
	public SurveyDTO2 surv_info(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		SurveyDTO2 info = session.selectOne("surv_info", email);
		session.close();
		
		return info;
	}
	
	public int surv_update(SurveyDTO2 dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("surv_update", dto);
		session.close();
		
		return row;
		
	}
	
}
