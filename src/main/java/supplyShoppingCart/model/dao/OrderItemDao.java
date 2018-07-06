package supplyShoppingCart.model.dao;

import java.sql.Connection;

import supplyShoppingCart.model.SupplyOrderItemBean_HO73;

public interface OrderItemDao {
	
	// 由 OrderItemBean取得商品價格(eBook#Price)。

	int updateProductStock(SupplyOrderItemBean_HO73 ob);
	
	void setConnection(Connection conn);
}
