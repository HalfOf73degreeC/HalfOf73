package supplyShoppingCart.model.service.impl;

import java.io.PrintWriter;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.repository.MemberDao;
import supplyShoppingCart.model.SupplyOrderBean_HO73;
import supplyShoppingCart.model.SupplyOrderItemBean_HO73;
import supplyShoppingCart.model.dao.OrderDao;
import supplyShoppingCart.model.dao.OrderItemDao;
import supplyShoppingCart.model.service.SupplyOrderService;

@Service
public class SupplyOrderServiceImpl_Spring implements SupplyOrderService {

	@Autowired
	private OrderItemDao oidao;
	@Autowired
	private OrderDao odao;
	@Autowired
	private MemberDao mdao;

	public SupplyOrderServiceImpl_Spring() {
	}
    @Transactional
	
	// 這是一個交易
	public void processOrder(SupplyOrderBean_HO73 ob) {
    	// 檢查所有訂單明細所訂購之商品的庫存數量是否足夠
    	checkStock(ob);
    	// 儲存訂單
    	odao.insertOrder(ob);
	}

	public void checkStock(SupplyOrderBean_HO73 ob) {
		Set<SupplyOrderItemBean_HO73> items = ob.getItems();
		for (SupplyOrderItemBean_HO73 oib : items) {
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
	public SupplyOrderBean_HO73 getOrder(int orderNo) {
		return odao.getOrder(orderNo);
	}

}
