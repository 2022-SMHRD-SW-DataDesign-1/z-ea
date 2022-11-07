package com.smhrd.controller;

import java.io.IOException;

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
 * Servlet implementation class ShowService
 */
@WebServlet("/ShowService")
public class ShowService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
	
		
		ItemDTO detail = new ItemDAO().showDetail(num);
		System.out.println("또다시 "+num);
		
		HttpSession session = request.getSession();
		System.out.println(detail);
		request.setAttribute("item", detail);
		
		RequestDispatcher rd = request.getRequestDispatcher("about_show.jsp");
		rd.forward(request, response);
		
		
		
	}

}
