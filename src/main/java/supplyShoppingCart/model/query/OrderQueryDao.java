package supplyShoppingCart.model.query;

import java.util.List;

import supplyShoppingCart.model.OrderBean;

public interface OrderQueryDao {

	OrderBean getOrder(int orderNo);

	List<OrderBean> getAllOrders();

	List<OrderBean> getMemberOrders() ;

	String getMemberId();

	void setMemberId(String memberId);

}