package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.ReservationDAO;
import com.smhrd.model.ReservationDTO;

@WebServlet("/ReservationService")
public class ReservationService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		System.out.println("여기부터");
		MemberDTO dto = (MemberDTO) session.getAttribute("info");
	
		  BigDecimal gc_num = new BigDecimal(request.getParameter("gc_num"));
		  

		String room_name = request.getParameter("roomname");
		System.out.println(dto.getMb_email());
		String roomname = request.getParameter("roomname");

		String guests_a = request.getParameter("Guests_adult");
	
		String guests_k = request.getParameter("Guests_kid");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		response.getWriter().print(checkin);
		response.getWriter().print(checkout);
		

	}

}
