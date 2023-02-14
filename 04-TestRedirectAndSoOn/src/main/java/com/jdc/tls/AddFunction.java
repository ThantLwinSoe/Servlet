package com.jdc.tls;

import java.io.IOException;

import com.jdc.tls.call.BookInfo;
import com.jdc.tls.util.Books;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(
			name ="add_fun_book",
			urlPatterns = {"/contOne","/addBook"}
		)
public class AddFunction extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		switch(req.getServletPath()) {
		
		case "/contOne":
			log(String.format("Cont One =============> %s", req.getServletPath()));
			
			showCountOne(req, resp);
			break;
		case "/addBook":
			log(String.format("Add Book ============> %s", req.getServletPath()));
			addingBooks(req,resp);
			break;
		
		}
		
	}
	
	public void addingBooks(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BookInfo bookInfo =(BookInfo) getServletContext().getAttribute("add");
		
		if(bookInfo == null) {
			bookInfo = new BookInfo();
			
		}

		bookInfo.addBooks(new Books((String) req.getParameter("bookName"),
				Integer.valueOf((String) req.getParameter("quantity")), 
					Integer.valueOf((String) req.getParameter("price"))));
		
		
//		log(String.format("Quantity =========> %s", (String) req.getParameter("quantity")));
//		log(String.format("Price ============> %s", (String) req.getParameter("price")));
		getServletContext().setAttribute("add", bookInfo);
		getServletContext().getRequestDispatcher("/StoreBooks.jsp").forward(req, resp);
		
	}
	
	public void showCountOne(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			var path = req.getContextPath().concat("/AddMenu.jsp");
			resp.sendRedirect(path);
	}
}
