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
}
