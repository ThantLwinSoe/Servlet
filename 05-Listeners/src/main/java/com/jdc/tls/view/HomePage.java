package com.jdc.tls.view;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.Reader;
import java.nio.file.Path;

import com.jdc.tls.model.Car;
import com.jdc.tls.util.CarImpl;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class HomePage implements ServletContextListener{
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		
		// build CarImpl
		
		CarImpl implCar = new CarImpl();
		
//		var t = sce.getServletContext().getContextPath().concat("/info.txt");
//		System.out.print(String.format("FilePath ===============> %s", t));

		// Read File and data input Car object
//		String path = sce.getServletContext().getRealPath("/src/main/resources/info.txt");
		
//		System.out.print(String.format("FilePath ===============> %s", path));
		
		try(BufferedReader reader = new BufferedReader( new FileReader(Path.of("/home/tls/ServletTest/05-Listeners/src/main/resources/info.txt").toFile()))) {
			
			String str ="";
			while(null != (str=reader.readLine())) {
				Car car = new Car(str);
				implCar.addCar(car);
			//	System.out.println(str);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		// Data insert Application Scope
		sce.getServletContext().setAttribute("info_view", implCar);
		
	}
}
