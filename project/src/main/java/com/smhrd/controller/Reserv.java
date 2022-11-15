package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Reserv")
public class Reserv extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		System.out.println("왜안되" + checkin);
		System.out.println("어쨰서" + checkout);
		
		/*
		 * request.setAttribute("checkin", checkin); request.setAttribute("checkout",
		 * checkout);
		 */
		// response.sendRedirect("item_reservation.jsp?checkin="+URLEncoder.encode(checkin,"UTF-8")+"&checkout="+URLEncoder.encode(checkout,"UTF-8"));
		RequestDispatcher rd = request.getRequestDispatcher("item_reservation.jsp");
		rd.forward(request, response);

	}

}
