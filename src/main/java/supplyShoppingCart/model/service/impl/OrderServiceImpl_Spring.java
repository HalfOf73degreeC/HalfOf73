package supplyShoppingCart.model.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.repository.MemberDao;
import supplyShoppingCart.model.OrderBean;
import supplyShoppingCart.model.OrderItemBean;
import supplyShoppingCart.model.dao.OrderDao;
import supplyShoppingCart.model.dao.OrderItemDao;
import supplyShoppingCart.model.service.OrderService;

@Service
public class OrderServiceImpl_Spring implements OrderService {

	@Autowired
	private OrderItemDao oidao;
	@Autowired
	private OrderDao odao;
	@Autowired
	private MemberDao mdao;

	public OrderServiceImpl_Spring() {
	}
    @Transactional
	
	// 這是一個交易
	public void processOrder(OrderBean ob) {
    	// 儲存訂單
    	odao.insertOrder(ob);
    	// 檢查所有訂單明細所訂購之商品的庫存數量是否足夠
    	checkStock(ob);
	}

	public void checkStock(OrderBean ob) {
		Set<OrderItemBean> items = ob.getItems();
		for (OrderItemBean oib : items) {
			oidao.updateProductStock(oib);
		}
	}

	public OrderDao getOdao() {
		return odao;
	}

	public void setOdao(OrderDao odao) {
		this.odao = odao;
	}

	@Override
	public OrderBean getOrder(int orderNo) {
		return odao.getOrder(orderNo);
	}

}
