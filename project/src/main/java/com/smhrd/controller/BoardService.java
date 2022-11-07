package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;
import com.smhrd.model.MemberDTO;

@WebServlet("/BoardService")
public class BoardService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		

		String path = "C:\\Users\\smhrd\\git\\repository\\project\\src\\main\\webapp\\file";

		int size = 20 * 1024 * 1024;
		String encoding = "UTF-8";

		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		MultipartRequest multi = new MultipartRequest(request, path, size, encoding, rename);

		String board_title = multi.getParameter("board_title");
		String board_content = multi.getParameter("board_content");
		String board_file = multi.getFilesystemName("board_file");
		board_file = URLEncoder.encode(board_file, "UTF-8");
		String board_category = multi.getParameter("board_category");

		System.out.println(board_title);
		System.out.println(board_content);
		System.out.println(board_file);
		System.out.println(board_category);
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");

		BoardDTO dto = new BoardDTO(board_title, board_content, board_file, board_category, info.getMb_email());
		int row = new BoardDAO().upload(dto);

		if (row > 0) {
			System.out.println("업로드 성공");
		} else {
			System.out.println("업로드 실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("community.jsp");
		rd.forward(request, response);

	}

}
