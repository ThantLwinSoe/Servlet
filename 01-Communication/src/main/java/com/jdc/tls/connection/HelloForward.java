package com.jdc.tls.connection;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/info")
public class HelloForward extends HttpServlet {

	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// include 
		getServletContext().getRequestDispatcher("/header").include(req, resp);
		
		// Body
		resp.getWriter().append("<p>Ok</p>");
		
		// include
		getServletContext().getRequestDispatcher("/footer").include(req, resp);

	}

}
