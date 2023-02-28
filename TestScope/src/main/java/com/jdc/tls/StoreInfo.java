package com.jdc.tls;

import java.util.ArrayList;
import java.util.List;

public class StoreInfo {
	
	private List<CarInfo> list;
	
	public StoreInfo() {
		this.list = new ArrayList<CarInfo>();
	}
	
	public void addCar(CarInfo carInfo) {
		
		list.add(carInfo);
	}
	
	public List<CarInfo> getList(){
		return new ArrayList<>(list);
	}

}
