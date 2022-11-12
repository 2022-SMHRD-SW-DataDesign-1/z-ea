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

import com.smhrd.model.MemberDTO;
import com.smhrd.model.SurveyDAO2;
import com.smhrd.model.SurveyDTO2;

@WebServlet("/Survey2Service")
public class Survey2Service extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("info");
		String data = request.getParameter("mb_age");
		String data1 = request.getParameter("mb_view");
		String data2 = request.getParameter("mb_company");
		String data3 = request.getParameter("mb_tour_theme");
		String data4 = request.getParameter("mb_tour_type");
		String data5 = request.getParameter("mb_tip");
		String data6 = request.getParameter("mb_season");
		response.getWriter().print(data);
		response.getWriter().print(data1);
		response.getWriter().print(data2);
		response.getWriter().print(data3);
		response.getWriter().print(data4);
		response.getWriter().print(data5);
		response.getWriter().print(data6);
		System.out.println(data);
		System.out.println(data1);
		System.out.println(data2);
		System.out.println(data3);
		System.out.println(data4);
		System.out.println(data5);
		System.out.println(data6);

		SurveyDTO2 dto2 = new SurveyDTO2(dto.getMb_email(), data, data1, data2, data3, data4, data5, data6);
		int row = new SurveyDAO2().survey(dto2);

		if (row > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		
	}

}
