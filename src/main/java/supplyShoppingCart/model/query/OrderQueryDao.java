package supplyShoppingCart.model.query;

import java.util.List;

import supplyShoppingCart.model.SupplyOrderBean_HO73;

public interface OrderQueryDao {

	SupplyOrderBean_HO73 getOrder(int orderNo);

	List<SupplyOrderBean_HO73> getAllOrders();

	List<SupplyOrderBean_HO73> getMemberOrders() ;

	String getMemberId();

	void setMemberId(String memberId);

}