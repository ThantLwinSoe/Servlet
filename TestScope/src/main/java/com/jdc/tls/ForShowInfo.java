package com.jdc.tls;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/duty", "/show"})
public class ForShowInfo extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private HttpSession session;
	private StoreInfo store;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	//	log(String.format("Path =====================>  %s", req.getServletPath()));
	
	switch(req.getServletPath()) {
	case "/duty":
		addCar(req, resp);
	case "/show":
		show(req,resp);
		break;
	default: 
		break;
	}
		
	}
	
	public void show(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/show_page.jsp").forward(req, resp);
	}
	
	public void addCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CarInfo info = new CarInfo();
		info.setCarNo(req.getParameter("car_no"));
		info.setCarName(req.getParameter("car_name"));
		info.setTravelInfo(req.getParameter("travel_info"));
		
		if(store == null ) {
			store = new StoreInfo();
//			log("store object is nulll +++++++++++++++++++++>>>");
		}		
		store.addCar(info);
			
		session = req.getSession();
		session.setAttribute("carInfo", store);
		
		getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
	}

}
