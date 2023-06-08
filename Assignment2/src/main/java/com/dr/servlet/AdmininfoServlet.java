package com.dr.servlet;


import java.io.IOException;

import com.dr.service.impl.AdmininfoServiceImpl;
import com.dr.utils.ProcessPassword;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdmininfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method=request.getParameter("method");
		if(method.equals("login")) {
			login(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void login(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println("username:"+username);
		System.out.println("password:"+password);
		
		//encrypt the password
		String passwordAfterEncry=ProcessPassword.getResult(password);
		int result=AdmininfoServiceImpl.searchByUsernameAndPsw(username, passwordAfterEncry);
		if(result==1) {
			//successfully login into the system
			request.getRequestDispatcher("afterlogin.jsp").forward(request, response);
		}else if(result==0) {
			//unsuccessfully login into the system
			response.sendRedirect("errorPage.html");
		}
 	}
}
