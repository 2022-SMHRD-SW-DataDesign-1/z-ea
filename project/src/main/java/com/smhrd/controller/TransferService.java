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
import com.smhrd.model.TransferDAO;
import com.smhrd.model.TransferDTO;

@WebServlet("/TransferService")
public class TransferService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String path = "C:\\Users\\smhrd\\git\\repository\\project\\src\\main\\webapp\\file";
		System.out.println(path);

		int size = 20 * 1024 * 1024;
		String encoding = "UTF-8";

		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		MultipartRequest multi = new MultipartRequest(request, path, size, encoding, rename);
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		TransferDTO dto = new TransferDTO();
		int row = new TransferDAO().upload(dto);

		if (row > 0) {
			System.out.println("업로드 성공");
		} else {
			System.out.println("업로드 실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("transfer.jsp");
		rd.forward(request, response);

	}
}
