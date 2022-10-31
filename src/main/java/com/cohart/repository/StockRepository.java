package com.cohart.repository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.cohart.to.Stock;
import com.cohart.db.DBUtils;

public class StockRepository {

	public Stock selectProduct(int stockID) throws Exception {
		Connection conn = DBUtils.getConnection();
		PreparedStatement pstmt = conn.prepareStatement("select * from product where stockID = ?");
		pstmt.setInt(1, stockID);
		Stock product = null;
		ResultSet prs = pstmt.executeQuery();
		while (prs.next()) {
			product = (new Stock(prs.getInt(1), prs.getString(2), prs.getDouble(3), prs.getInt(4)));
		}
		return product;
	}
	
	public void updateStockCount(Integer stockID, Integer countStock) throws Exception {
		Connection conn = DBUtils.getConnection();
		PreparedStatement pstmt = conn.prepareStatement("update product set countStock = ? where stocktID = ?");
		pstmt.setInt(1, countStock.intValue());
		pstmt.setInt(2, stockID.intValue());
		pstmt.executeUpdate();
}
	public Stock updateStock(Stock stock, int stockID) throws Exception {
		Connection conn = DBUtils.getConnection();
		PreparedStatement pstmt = conn.prepareStatement("update product set countStock = ? where stockID = ?");
		pstmt.setInt(1, (stock.getUnitCount()-1));
		pstmt.setInt(2, stockID);
		pstmt.executeUpdate();
		stock = selectProduct(stockID) ;
		return stock;
}
	
}