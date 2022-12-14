package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;

import com.smhrd.db.SqlSessionManger;

public class ItemDAO {
private SqlSessionFactory sqlSessionFactory =
SqlSessionManger.getSqlSession();

public ArrayList<ItemDTO> Filter(String tag) {
	SqlSession session = sqlSessionFactory.openSession(true);
	System.out.println("DB");
	String rtag = "%"+tag+"%";
	System.out.println(rtag);
	ArrayList<ItemDTO> item_list = (ArrayList)session.selectList("Filter",tag);
	System.out.println(item_list.size());
	session.close();
	
	return item_list;
}
public ItemDTO showDetail(int num) {
	SqlSession session = sqlSessionFactory.openSession(true);
	ItemDTO item = session.selectOne("showDetail",num);
	session.close();
	return item;
}

public ArrayList<ItemDTO> searchName(String name) {
	SqlSession session = sqlSessionFactory.openSession(true);
	ArrayList<ItemDTO> dto = (ArrayList)session.selectList("search", name);
	session.close();
	return dto;
}
public ArrayList<ItemDTO> showAll() {
	SqlSession session = sqlSessionFactory.openSession(true);
	ArrayList<ItemDTO> dto = (ArrayList)session.selectList("showAll");
	session.close();
	return dto;
}

public ArrayList<ItemDTO> surv_item_filter(String tag){
	SqlSession session = sqlSessionFactory.openSession(true);
	ArrayList<ItemDTO> list = (ArrayList)session.selectList("surv_item_filter", tag);
	session.close();
	return list;
}
}
