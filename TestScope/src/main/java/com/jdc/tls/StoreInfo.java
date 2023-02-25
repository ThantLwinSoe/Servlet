package com.jdc.tls;

import java.util.ArrayList;
import java.util.List;

public class StoreInfo {
	
	private List<CarInfo> list;
	
	public void addCar(CarInfo carInfo) {
		if(null == list) {
			list = new ArrayList<>();
		}
		list.add(carInfo);
	}
	
	public List<CarInfo> getList(){
		return new ArrayList<>(list);
	}

}
