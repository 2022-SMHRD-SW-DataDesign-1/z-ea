package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;
@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String mb_name = request.getParameter("mb_name");
		String mb_phone = request.getParameter("mb_phone");
		String mb_pw = request.getParameter("mb_pw");
		String birthdate = request.getParameter("mb_birthdate");
		String mb_birthdate = birthdate.replace("-","");
		
		System.out.println(mb_name);
		System.out.println(mb_phone);
		System.out.println(mb_pw);
		System.out.println(mb_birthdate);
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		MemberDTO dto = new MemberDTO(info.getMb_email(), mb_pw, mb_birthdate, mb_name, mb_phone);
		
		int row = new MemberDAO().update(dto);
		
		if(row >0) {
			System.out.println("수정 성공");
			session = request.getSession();
			session.setAttribute("info", dto);
		}else {
			System.out.println("수정 실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

}
