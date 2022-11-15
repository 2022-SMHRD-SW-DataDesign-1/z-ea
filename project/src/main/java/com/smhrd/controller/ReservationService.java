package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

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
import com.smhrd.model.RoomDAO;

@WebServlet("/ReservationService")
public class ReservationService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		MemberDTO dto = (MemberDTO) session.getAttribute("info");
		/*
		 * System.out.println(rc_num); System.out.println(dto.getMb_email());
		 * 
		 * 
		 * System.out.println("여기부터"); MemberDTO dto = (MemberDTO)
		 * session.getAttribute("info"); BigDecimal gc_num = new
		 * BigDecimal(request.getParameter("gc_num"));
		 */

		BigDecimal gc_num = new BigDecimal(request.getParameter("gc_num"));

		String roomname = request.getParameter("roomname");
		BigDecimal room_num = new BigDecimal(roomname);
		System.out.println("rr" + room_num);
		String mb_email = dto.getMb_email();

		String guests_a = request.getParameter("Guests_adult");

		String guests_k = request.getParameter("Guests_kid");

		String check_in = request.getParameter("checkin");
		System.out.println("checkin" + check_in);
		String check_out = request.getParameter("checkout");
		System.out.println("checkout" + check_out);

		ReservationDTO reservDTO = new ReservationDTO(gc_num, room_num, mb_email, check_in, check_out);

		ReservationDAO reservDAO = new ReservationDAO();
		int row = reservDAO.insertReservation(reservDTO);
		if (row > 0) {
			System.out.println("예약 성공");
		} else {
			System.out.println("예약 실패");
		}

		RequestDispatcher rd = request.getRequestDispatcher("reservation_show.jsp");
		rd.forward(request, response);

	}

}
