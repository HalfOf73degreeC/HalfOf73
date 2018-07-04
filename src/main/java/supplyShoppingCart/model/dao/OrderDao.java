package supplyShoppingCart.model.dao;

import java.sql.Connection;

import supplyShoppingCart.model.OrderBean;

public interface OrderDao {

	void insertOrder(OrderBean ob);

	void setConnection(Connection con);

	OrderBean getOrder(int orderNo);

}