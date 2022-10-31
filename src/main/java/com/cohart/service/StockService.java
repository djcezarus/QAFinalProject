package com.cohart.service;
import com.cohart.repository.StockRepository;
import com.cohart.to.Stock;

public class StockService {
	public Stock checkProductStock(Stock stock, int stockID) throws Exception{
		StockRepository stockRepository = new StockRepository();
		stock = stockRepository.selectProduct(stockID);
	 return stock;
	}
	public Stock updateStock(Stock stock, int stockID) throws Exception{
		StockRepository stockRepository = new StockRepository();
		stock = stockRepository.updateStock(stock, stockID);
	 return stock;
	}	
	
}