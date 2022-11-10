package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManger;

public class TransferDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();

}
