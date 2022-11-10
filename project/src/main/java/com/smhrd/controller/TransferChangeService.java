package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ReservationDAO;
import com.smhrd.model.ReservationDTO;
@WebServlet("/TransferChangeService")
public class TransferChangeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mb_email = request.getParameter("email");
		BigDecimal rc_num = new BigDecimal(request.getParameter("num"));
		System.out.println("email"+mb_email);
		System.out.println("tran_num"+rc_num);
		
		ReservationDTO dto = new ReservationDTO(rc_num,rc_num, null, mb_email, null, null);
		int row = new ReservationDAO().transfer_update(dto);
		
		if(row>0) {
			System.out.println("성");
		}else {
			System.out.println("실");
		}
		RequestDispatcher rd = request.getRequestDispatcher("reservation_show.jsp");
		rd.forward(request, response);
	}

}
