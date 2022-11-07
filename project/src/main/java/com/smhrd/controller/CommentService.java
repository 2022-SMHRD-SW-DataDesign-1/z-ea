package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentDTO;
import com.smhrd.model.MemberDTO;
@WebServlet("/CommentService")
public class CommentService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		BigDecimal board_num = new BigDecimal(request.getParameter("board_num"));
		String comment_content = request.getParameter("comment_content");
		HttpSession session = request.getSession();
		MemberDTO dto =(MemberDTO)session.getAttribute("info");
		
		System.out.println(board_num);
		System.out.println(dto.getMb_email());
		System.out.println(comment_content);
		
		CommentDTO info = new CommentDTO(board_num,dto.getMb_email(),comment_content);
		int row = new CommentDAO().insert(info);
		
		if(row >0) {
			System.out.println("댓글 저장 성공");
			//session.setAttribute("Comment_info", info);
			request.setAttribute("num", board_num);
		}else {
			System.out.println("댓글 저장 실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("community_detail.jsp");
		rd.forward(request, response);
		//response.sendRedirect("community_detail.jsp");
	}

}
