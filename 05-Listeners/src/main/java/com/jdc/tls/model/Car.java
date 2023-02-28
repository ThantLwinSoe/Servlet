package com.jdc.tls.model;

public class Car {

	private String car;
	private String startPoint;
	private String endPoint;
	private int price;
	
	public Car(String str ) {
		var array = str.split("\t");
		this.car = array[0];
		this.startPoint = array[1];
		this.endPoint = array[2];
		this.price = Integer.parseInt(array[3]);
	}

	public String getCar() {
		return car;
	}

	public void setCar(String car) {
		this.car = car;
	}

	public String getStartPoint() {
		return startPoint;
	}

	public void setStartPoint(String startPoint) {
		this.startPoint = startPoint;
	}

	public String getEndPoint() {
		return endPoint;
	}

	public void setEndPoint(String endPoint) {
		this.endPoint = endPoint;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return String.format("Name : %s\n Price : %d", car,price);
	}

}
