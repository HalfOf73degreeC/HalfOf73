package shoppingCart.model.query;

import java.util.List;

import shoppingCart.model.OrderBean_HO73;

public interface OrderQueryDao {

	OrderBean_HO73 getOrder(int orderNo);

	List<OrderBean_HO73> getAllOrders();

	List<OrderBean_HO73> getMemberOrders() ;

	String getMemAccount();

	void setMemAccount(String memAccount);

}