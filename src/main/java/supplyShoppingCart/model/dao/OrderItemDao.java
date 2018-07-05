package supplyShoppingCart.model.dao;

import java.sql.Connection;

import supplyShoppingCart.model.OrderItemBean;

public interface OrderItemDao {
	
	// 由 OrderItemBean取得商品價格(eBook#Price)。

	int updateProductStock(OrderItemBean ob);
	
	void setConnection(Connection conn);
}
