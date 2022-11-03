package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
@WebServlet("/EmailCheckService")
public class EmailCheckService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String mb_email_ck = request.getParameter("mb_email_ck");
	
	boolean ck = new MemberDAO().emailCheck(mb_email_ck);
	
	response.getWriter().print(ck);
	}

}
