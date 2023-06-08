package com.dr.servlet;

import java.io.IOException;
import com.dr.entity.Form;
import com.dr.service.impl.FormServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method=request.getParameter("method");
		if(method.equals("check")) {
			System.out.println("check方法被调用");
			check(request, response);
		}else if(method.equals("add")) {
			addFormBySID(request, response);
		}else if(method.equals("update")) {
			updateFormBySID(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void check(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		String SID=request.getParameter("SID");
		Form result=FormServiceImpl.searchBySID(SID);
		if(result.getFID()==0) {
			//there isn't an existing form stored in the database for that particular student
			System.out.println("there is no existing form attached with this SID");
			request.setAttribute("SID", SID);
			request.getRequestDispatcher("addform.jsp").forward(request, response);
		}else if(result.getFID()!=0) {
			System.out.println("successfully find the form in the database attached with this SID");
			//there is an existing form stored in the database for that particular student
			request.setAttribute("SID", SID);
			request.getRequestDispatcher("editform.jsp").forward(request, response);
		}
	}
	
	private void addFormBySID(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		String SID=request.getParameter("SID");
		String Q1=request.getParameter("Q1");
		String Q2=request.getParameter("Q2");
		String Q3=request.getParameter("Q3");
		String Q4=request.getParameter("Q4");
		String Q5=request.getParameter("Q5");
		int result=FormServiceImpl.addNewForm(Q1, Q2, Q3, Q4, Q5, SID);
		if(result==1) {
			//succcessfully add the new form
			System.out.println("successfully add the new form");
			response.sendRedirect("afterlogin.jsp");
		}else if(result==0) {
			System.out.println("fail to add the new form");
			response.sendRedirect("errorPage.html");
		}
	}
	
	private void updateFormBySID(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		String SID=request.getParameter("SID");
		String Q1=request.getParameter("Q1");
		String Q2=request.getParameter("Q2");
		String Q3=request.getParameter("Q3");
		String Q4=request.getParameter("Q4");
		String Q5=request.getParameter("Q5");
		System.out.println("------------------------------------------");
		System.out.println("form servlet");
		System.out.println(SID);
		System.out.println(Q1);
		System.out.println(Q2);
		System.out.println(Q3);
		System.out.println(Q4);
		System.out.println(Q5);
		int result=FormServiceImpl.updateForm(Q1, Q2, Q3, Q4, Q5, SID);
		if(result==1) {
			System.out.println("successfully update the form information");
			response.sendRedirect("afterlogin.jsp");
		}else if(result==0) {
			System.out.println("fail to update the form information");
			response.sendRedirect("errorPage.html");
		}
	}
}
