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

import com.smhrd.model.BoardDTO;
import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentDTO;

@WebServlet("/CommentShowService")
public class CommentShowService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		//HttpSession session = request.getSession();
		//BoardDTO dto = (BoardDTO)session.getAttribute("Comment_info");
		
		BigDecimal board_num = new BigDecimal(request.getParameter("board_num"));
		//ArrayList<CommentDTO> list = new CommentDAO().show_comment(board_num);
		
		//response.getWriter().print(list);
		//System.out.println(list);
		//CommentDTO info = new CommentDTO(dto.getBoard_num(),dto.getMb_email(),dto.getBoard_content());
		ArrayList<CommentDTO> list= (ArrayList<CommentDTO>)new CommentDAO().show_comment(board_num);//.show_comment(info.ge);
		
		if(list !=null) {
			System.out.println("조회 성공");
		}else {
			System.out.println("조회 실패");
		}
	
		RequestDispatcher rd = request.getRequestDispatcher("community_detail.jsp");
		rd.forward(request, response);
	}

}
