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

import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentDTO;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.ReviewDAO;
import com.smhrd.model.ReviewDTO;

/**
 * Servlet implementation class reviewService
 */
@WebServlet("/ReviewService")
public class ReviewService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String gc_num = request.getParameter("gc_num");
		String review_content = request.getParameter("review_content");
		System.out.println(gc_num);
		System.out.println(review_content);
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		// System.out.println("GC_NUM : "+gc_num);
		// System.out.println("REVIEW_CONTENT : "+ review_content);
		response.getWriter().print(gc_num);
		response.getWriter().print(review_content);
		BigDecimal num = new BigDecimal(gc_num);
		BigDecimal score = new BigDecimal("5");
		String Mb_email = info.getMb_email();
		ReviewDTO review = new ReviewDTO(Mb_email,review_content,score,num);
		System.out.println("여기까지??");
		int row = new ReviewDAO().review_insert(review);
		if(row > 0) {
			System.out.println("인서트 섣ㅇ공");
		}else {
			System.out.println("...실패");
		}
		
	}

}
