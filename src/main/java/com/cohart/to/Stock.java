package com.cohart.to;

public class Stock {
	int stockID;
	String name;
	double level;
	int countStock;
	

	public Stock(int stockID, String name, double level, int countStock) {
		super();
		this.stockID = stockID;
		this.name = name;
		this.level = level;
		this.countStock = countStock;
	}



	public int getStockID() {
		return stockID;
	}



	public void setStockID(int stockID) {
		this.stockID = stockID;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public double getLevel() {
		return level;
	}



	public void setLevel(double level) {
		this.level = level;
	}



	public int getCountStock() {
		return countStock;
	}



	public void setCountStock(int countStock) {
		this.countStock = countStock;
	}



	public int getUnitCount() {
		// TODO Auto-generated method stub
		return 0;
	}


}