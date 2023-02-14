package com.jdc.tls.call;

import java.util.ArrayList;
import java.util.List;

import com.jdc.tls.util.Books;

public class BookInfo {
	
	private List<Books> list ;
	
	public BookInfo() {
		this.list = new ArrayList<>();
	}
	
	public void addBooks(Books book) {
		list.add(book);
	}
	
	public List<Books> getList() {
		return new ArrayList<>(list);
	}
	
	

}
