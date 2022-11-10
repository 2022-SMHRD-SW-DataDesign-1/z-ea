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

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		BigDecimal rc_num = new BigDecimal(request.getParameter("rc_num"));
		BigDecimal room_num = new BigDecimal(request.getParameter("room_num"));
		
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("info");
		
		System.out.println(rc_num);
		System.out.println(dto.getMb_email());
		
		ReservationDTO info = new ReservationDTO(rc_num,room_num,);
		int row = new ReservationDAO().insert(info);
	
		
	}

}
