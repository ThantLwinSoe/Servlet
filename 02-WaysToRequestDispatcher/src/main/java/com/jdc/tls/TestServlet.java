package com.jdc.tls;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/info","/info_two","/info_three"})
public class TestServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// call another servlet forward method
		switch(req.getServletPath()) {
		
		case("/info") :
			// naming rule 
			getServletContext().getNamedDispatcher("namingRule").forward(req, resp);
			break;
		case("/info_two"):
			// url pattern rule
			getServletContext().getRequestDispatcher("/infoTwo.html").forward(req, resp);
			break;
		case("/info_three"):
			// url pattern rule from httpServletRequest object
			req.getRequestDispatcher("./infoThree.html").forward(req, resp);
			break;
		}
		
		
	}

}
