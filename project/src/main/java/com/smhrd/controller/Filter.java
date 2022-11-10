package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.ItemDAO;
import com.smhrd.model.ItemDTO;

/**
 * Servlet implementation class Filter
 */
@WebServlet("/Filter")
public class Filter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String tag = request.getParameter("gc_tag");

		System.out.println("이거지@!!!");
		ArrayList<ItemDTO> list = new ItemDAO().Filter(tag);
		System.out.println("이게 결과야" + list);
		
		Gson g=new Gson();
		String json=g.toJson(list);
	/*	for(int i=0; i< list.size(); i++) {*/
		response.setContentType("text/json;charset=euc-kr");
		response.getWriter().print(json); // [{   },{    }]
		//response.getWriter().print(list);
	
		/* } */
		
	}

}
