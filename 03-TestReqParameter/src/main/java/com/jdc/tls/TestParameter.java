package com.jdc.tls;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(
			name = "test_parameter",
			urlPatterns = "/ok"
		)
public class TestParameter extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		var userName = req.getParameter("user_name");
		var course = req.getParameter("course");
		
		var session = req.getSession();
		
		String [] array = {userName,course};
		// set Attri to seesion scope
		session.setAttribute("info", array);
		
		log(String.format("User_Name =====>  %s", array[0]));
		log(String.format("User_Name =====>  %s", array[1]));
		
		// get absolute path of Servlet Path for redirect
		var path = req.getContextPath().concat("/output.jsp");
		resp.sendRedirect(path);
	//	log(String.format("Context Path name ==================> %s",path));
	//	log(String.format("Servlet Info ===========> %s", getServletInfo()));
	}

}
