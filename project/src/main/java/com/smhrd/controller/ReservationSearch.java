package com.smhrd.controller;
import java.io.IOException;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ReservationSearch")
public class ReservationSearch extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String gc_name = request.getParameter("reserv_search");
		System.out.println("gc_name서비스"+gc_name);
		
		
		response.sendRedirect("reservation.jsp?gc_name="+URLEncoder.encode(gc_name,"UTF-8"));
	
	}
}