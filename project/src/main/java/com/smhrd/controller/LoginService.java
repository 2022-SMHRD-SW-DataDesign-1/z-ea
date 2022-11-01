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
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String mb_email = request.getParameter("mb_email");
		String mb_pw = request.getParameter("mb_pw");
		System.out.println(mb_email);
		System.out.println(mb_pw);
		
		//HttpSession session = request.getSession();
		//MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		MemberDTO i  = new MemberDAO().login_info(mb_email);
		
		MemberDTO dto = new MemberDTO(mb_email, mb_pw, i.getMb_birthdate(),i.getMb_name(),i.getMb_phone());
		
		MemberDTO login = new MemberDAO().login(dto);
		
		if(login !=null) {
			System.out.println("로그인성공");
			HttpSession session =  request.getSession();
			session.setAttribute("info", dto);
			
		}else {
			System.out.println("로그인 실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		
	}

}
