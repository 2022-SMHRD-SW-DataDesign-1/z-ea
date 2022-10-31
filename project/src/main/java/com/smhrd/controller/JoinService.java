package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String birth = request.getParameter("birth");
		String username = request.getParameter("username");
		String tel = request.getParameter("tel");
		
		MemberDTO dto = new MemberDTO(email,pw,birth,username,tel);
		int  row = new MemberDAO().join(dto);
		
		if(row >0) {
			System.out.println("로그인 성공");
		}else {
			System.out.println("로그인 실패");
		}
		response.sendRedirect("Main.jsp");
	}

}
