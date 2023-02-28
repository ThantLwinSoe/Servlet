package com.jdc.tls.util;

import java.util.ArrayList;
import java.util.List;

import com.jdc.tls.model.Car;

public class CarImpl {
	
	private List<Car> list;
	
	public CarImpl() {
		this.list = new ArrayList<>();
	}
	
	public void addCar(Car car) {
		list.add(car);
	}
	
	public List<Car> getList() {
		return new ArrayList<Car>(list);
	}

}
