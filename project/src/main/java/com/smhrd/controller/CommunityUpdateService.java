package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

@WebServlet("/CommunityUpdateService")
public class CommunityUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String path ="C:\\Users\\smhrd\\git\\project\\project\\src\\main\\webapp\\file";

		System.out.println(path);

		int size = 20 * 1024 * 1024;
		String encoding = "UTF-8";

		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		MultipartRequest multi = new MultipartRequest(request, path, size, encoding, rename);
		BigDecimal board_num = new BigDecimal(multi.getParameter("num"));
		String board_title = multi.getParameter("board_title");
		String board_content = multi.getParameter("board_content");
		String board_file = multi.getFilesystemName("board_file");
		board_file = URLEncoder.encode(board_file, "UTF-8");
		String board_category = multi.getParameter("board_category");

		BoardDTO dto = new BoardDTO(board_num, board_title, board_content, board_file, board_category, null,
				board_category);
		int update = new BoardDAO().boardupdate(dto);

		if (update > 0) {
			System.out.println("수정성공");
		} else {
			System.out.println("수정실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("comment_review.jsp");
		rd.forward(request, response);
	}

}
