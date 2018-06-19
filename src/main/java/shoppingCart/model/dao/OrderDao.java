package shoppingCart.model.dao;

import java.sql.Connection;

import shoppingCart.model.OrderBean_HO73;

public interface OrderDao {

	void insertOrder(OrderBean_HO73 ob);

	void setConnection(Connection con);

	OrderBean_HO73 getOrder(int orderNo);

}