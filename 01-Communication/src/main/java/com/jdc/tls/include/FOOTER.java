package com.jdc.tls.include;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/footer")
public class FOOTER extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private final String FOOTER = """
			<a href="index.html">Click Click<a/>
		</body>
		</html>
	""";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.getWriter().append(FOOTER);
	}
}
