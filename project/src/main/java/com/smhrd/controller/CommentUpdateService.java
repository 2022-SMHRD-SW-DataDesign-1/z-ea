package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;

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

@WebServlet("/CommentUpdateService")
public class CommentUpdateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String comment_content =request.getParameter("comment_content");
		BigDecimal num = new BigDecimal(request.getParameter("num"));
		
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("info");
		ArrayList<CommentDTO> list =  new CommentDAO().my_comment(dto.getMb_email());
		CommentDTO info;
		int a =0;
		for(int i=0; i<list.size(); i++) {
		info = new CommentDTO(num,list.get(i).getBoard_num(),dto.getMb_email(),comment_content,list.get(i).getComment_date());
		a = new CommentDAO().commentupdate(info);
		}
		if(a>0) {
			System.out.println("수정성공");
		}else {
			System.out.println("수정실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("comment_review.jsp");
		rd.forward(request, response);
	}
}
