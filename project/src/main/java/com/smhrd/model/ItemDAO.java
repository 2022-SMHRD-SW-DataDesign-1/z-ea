package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;

import com.smhrd.db.SqlSessionManger;

public class ItemDAO {
private SqlSessionFactory sqlSessionFactory =
SqlSessionManger.getSqlSession();

public ArrayList<ItemDTO> Filter(String filter) {
	SqlSession session = sqlSessionFactory.openSession(true);
	System.out.println("DB");
	ArrayList<ItemDTO> item_list = (ArrayList)session.selectList("Filter",filter);
	System.out.println("DAO");
	session.close();
	System.out.println(item_list);
	return item_list;
}
public ItemDTO showDetail(int num) {
	SqlSession session = sqlSessionFactory.openSession(true);
	ItemDTO item = session.selectOne("showDetail",num);
	session.close();
	return item;
}
}
