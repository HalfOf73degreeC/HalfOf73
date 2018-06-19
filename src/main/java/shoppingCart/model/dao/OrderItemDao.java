package shoppingCart.model.dao;

import java.sql.Connection;

import shoppingCart.model.OrderItemBean_HO73;

public interface OrderItemDao {
	
	// 由 OrderItemBean取得商品價格(eBook#Price)。
		
	double findItemAmount(OrderItemBean_HO73 oib);

	int updateProductStock(OrderItemBean_HO73 ob);
	
	void setConnection(Connection conn);
}
