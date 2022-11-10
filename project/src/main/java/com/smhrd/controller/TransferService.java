package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDTO;
import com.smhrd.model.TransferDAO;
import com.smhrd.model.TransferDTO;

@WebServlet("/TransferService")
public class TransferService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		BigDecimal rc_num = new BigDecimal(request.getParameter("rc_num"));
		String transfer_reason = request.getParameter("transfer_reason");
		BigDecimal offer_price = new BigDecimal(request.getParameter("offer_price"));
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		System.out.println(rc_num);
		System.out.println(transfer_reason);
		System.out.println(offer_price);
		
		TransferDTO dto = new TransferDTO(rc_num,info.getMb_email(),transfer_reason,offer_price);
		int row = new TransferDAO().transfer_upload(dto);
		
		if (row > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("transfer.jsp");
		rd.forward(request, response);

	}
}
