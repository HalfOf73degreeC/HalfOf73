package supplyShoppingCart.model.dao;

import java.sql.Connection;

import supplyShoppingCart.model.SupplyOrderBean_HO73;

public interface OrderDao {

	void insertOrder(SupplyOrderBean_HO73 ob);

	void setConnection(Connection con);

	SupplyOrderBean_HO73 getOrder(int orderNo);

}