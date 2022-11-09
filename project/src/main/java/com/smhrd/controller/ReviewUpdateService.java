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
import com.smhrd.model.ReviewDAO;
import com.smhrd.model.ReviewDTO;
@WebServlet("/ReviewUpdateService")
public class ReviewUpdateService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		BigDecimal review_num = new BigDecimal(request.getParameter("num"));
		String review_content = request.getParameter("review_content");
		BigDecimal score = new BigDecimal(request.getParameter("score"));
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("info");
		
		ReviewDTO re = new ReviewDTO(review_num,dto.getMb_email(),review_content,score,null,score);
		int update = new ReviewDAO().reviewupdate(re);
		
		if(update>0) {
			System.out.println("수정성공");
		}else {
			System.out.println("수정실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("comment_review.jsp");
		rd.forward(request, response);
	}

}
