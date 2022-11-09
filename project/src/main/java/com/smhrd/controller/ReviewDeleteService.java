package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ReviewDAO;
@WebServlet("/ReviewDeleteService")
public class ReviewDeleteService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BigDecimal review_num =new BigDecimal(request.getParameter("num"));
		
		int row = new ReviewDAO().review_delete(review_num);
		if(row>0) {
			System.out.println("삭성");
		}else {
			System.out.println("삭실");
		}
		RequestDispatcher rd = request.getRequestDispatcher("comment_review.jsp");
		rd.forward(request, response);
	}

}
