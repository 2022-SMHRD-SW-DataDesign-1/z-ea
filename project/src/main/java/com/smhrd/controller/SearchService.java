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
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");

		String tag = request.getParameter("tag");
		System.out.println("이거라고"+tag);
		if (tag.contains("#") == true) {
			System.out.println(tag);

			ArrayList<ItemDTO> list = new ItemDAO().Filter(tag);
			/* System.out.println(list.get(0).getName()); */

			request.setAttribute("item_list", list);
			request.setAttribute("tag", tag);
		} else {
			System.out.println(tag);

			ArrayList<ItemDTO> item = new ItemDAO().searchName(tag);

			request.setAttribute("item_list", item);

		}

		System.out.println();
		
		 RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
		 rd.forward(request, response);
		 

	}

}
