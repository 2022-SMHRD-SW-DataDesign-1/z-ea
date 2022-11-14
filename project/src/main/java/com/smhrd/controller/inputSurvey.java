package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDTO;
import com.smhrd.model.SurveyDAO;
import com.smhrd.model.SurveyDTO;

/**
 * Servlet implementation class inputSurvey
 */
@WebServlet("/inputSurvey")
public class inputSurvey extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		BigDecimal survey_num = new BigDecimal(request.getParameter("survey_num"));
//		String mb_view = request.getParameter("mb_view");
//		String mb_tour_theme = request.getParameter("mb_tour_theme");
//		String mb_tour_type = request.getParameter("mb_tour_type");
//		String mb_company = request.getParameter("mb_company");
//		
//		
//		HttpSession session = request.getSession();
//		MemberDTO info = (MemberDTO) session.getAttribute("info");
//		
//		System.out.println(survey_num);
//		System.out.println(mb_view);
//		System.out.println(mb_tour_theme);
//		System.out.println(mb_tour_type);
//		System.out.println(mb_company);
		

		System.out.print("data");
		
	}

}
