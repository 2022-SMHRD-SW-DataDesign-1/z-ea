package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommentDAO;

@WebServlet("/CommentDeleteService")
public class CommentDeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BigDecimal comment_num = new BigDecimal(request.getParameter("num"));
		int row = new CommentDAO().comment_delete(comment_num);
		
		if(row>0) {
			System.out.println("삭제성공");
		}else {
			System.out.println("삭제실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("comment_review.jsp");
		rd.forward(request, response);
	}

}
