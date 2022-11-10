package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.LikeDAO;
import com.smhrd.model.LikeDTO;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.ReviewDAO;
import com.smhrd.model.ReviewDTO;

/**
 * Servlet implementation class LikeService
 */
@WebServlet("/LikeService")
public class LikeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String num = request.getParameter("gc_num");
		String like = request.getParameter("like");
		
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		// System.out.println("GC_NUM : "+gc_num);
		// System.out.println("REVIEW_CONTENT : "+ review_content);
		response.getWriter().print(num);
		response.getWriter().print(like);
		
		BigDecimal gc_num = new BigDecimal(num);
		BigDecimal liked = new BigDecimal(like);
		
		String mb_email = info.getMb_email();
		LikeDTO like_dto = new LikeDTO(gc_num,liked,mb_email);
		System.out.println("likje여기까지??");
		int row = new LikeDAO().like_insert(like_dto);
		if(row > 0) {
			System.out.println("인서트 섣ㅇ공");
		}else {
			System.out.println("...실패");
		}
	}

}
