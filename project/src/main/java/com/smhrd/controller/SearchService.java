package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ItemDAO;
import com.smhrd.model.ItemDTO;

/**
 * Servlet implementation class searchService
 */
@WebServlet("/SearchService")
public class SearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
request.setCharacterEncoding("UTF-8");
		
		String tag = request.getParameter("search");
		if(tag.contains("#") == true) {
			System.out.println(tag);

			
			ArrayList<ItemDTO> list= new ItemDAO().Filter(tag);
			
			
			request.setAttribute("item_list", list);
		}else {
			System.out.println(tag);
			
			ArrayList<ItemDTO> item= new ItemDAO().searchName(tag);
			
			request.setAttribute("item_list", item);
			
		}
		
        System.out.println();
		RequestDispatcher rd = request.getRequestDispatcher("about.jsp");
		rd.forward(request, response);
		
	
	}

}
