package supplyShoppingCart.model.dao.impl;
import java.sql.Connection;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.SupplyBean_HO73;
import shoppingCart.model.ude.ProductStockException;
import supplyShoppingCart.model.SupplyOrderItemBean_HO73;
import supplyShoppingCart.model.dao.OrderItemDao;
import supplyShoppingCart.model.ude.ProductNotFoundException;
/*
 * 一張合格的訂單必須經過下列檢查
 * 	1.	檢查訂購之商品的數量是否足夠。
 *      此功能寫在本類別的updateProductStock()方法內，參考該方法的說明。
 */
@Repository
public class OrderItemDaoImpl_Hibernate implements OrderItemDao {
	@Autowired
	SessionFactory factory;

	public OrderItemDaoImpl_Hibernate() {
	}
	/*
	 * 計算客戶欲購買之某項商品(以OrderItemBean物件oib來表示)的小計金額(subtotal)， 
	 * 計算公式為: 商品的數量 * 商品的單價  * 商品的折扣
	 */
//	@Override
//	public double findItemAmount(OrderItemBean oib) {
//		double subtotal = oib.getQuantity() * oib.getUnitPrice() * oib.getDiscount();
//		return subtotal;
//	}

	/*
	 * 功能：更新商品的數量，更新之前必須先檢查訂購之商品的數量是否足夠。
	 * 說明：商品的數量必須大於訂單明細中的訂購數量，否則丟出ProductStockException 
	 * int bookId: 產品代號 
	 * int orderedQuantity: 訂購數量
	 * 
	 * 步驟：1. 先檢查商品的庫存數量(Book表格的stock欄位)是否大於訂購之數量
	 * 如果Book表格中的庫存數量(Book#stock)小於訂購數量(orderedQuantity)
	 * 丟出ProductStockException，結束本方法。
	 * 
	 * 步驟：2. 更新Book表格的stock欄位: Book表格的stock -= orderedQuantity;
	 */
	@Override
	public int updateProductStock(SupplyOrderItemBean_HO73 oib) {
		SupplyBean_HO73 bean = null;
		int n = 0 ;
		String hql = "FROM SupplyBean_HO73 bb WHERE bb.supUid = :id";
		Session session = getSession();
		try {
			bean = (SupplyBean_HO73) session.createQuery(hql)
				      .setParameter("id", oib.getSupId())
				      .getSingleResult();
		} catch(NoResultException ex) {
			throw new ProductNotFoundException
			          ("SupplyBean_HO73表格中無此紀錄...supUid=" + oib.getSupId());
		}
		int stock = bean.getSupNeedStock();
		if (stock < oib.getQuantity()) {
			throw new ProductStockException("庫存數量不足: supUid: " 
					+ oib.getSupId() + ", 在庫量: " + stock+ ", 訂購量: " + oib.getQuantity());
		} 
		String hql2 = "UPDATE SupplyBean_HO73 bb SET bb.supNeedStock = bb.supNeedStock - :amount"
				+ " WHERE bb.supUid = :id";
		 n =   session.createQuery(hql2)
			      .setParameter("amount",  oib.getQuantity())
			      .setParameter("id", oib.getSupId())
			      .executeUpdate();
		return n;
	}
	@Override
	public void setConnection(Connection conn) {
	}
	public Session getSession() {
		return factory.getCurrentSession();
	}
	
}
