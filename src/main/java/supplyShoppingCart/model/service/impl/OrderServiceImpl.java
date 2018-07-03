package supplyShoppingCart.model.service.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Set;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import _00.utils.GlobalService;
import member.MemberDAO;
import shoppingCart.model.OrderBean_HO73;
import shoppingCart.model.OrderItemBean_HO73;
import shoppingCart.model.dao.OrderDao;
import shoppingCart.model.dao.OrderItemDao;
import shoppingCart.model.dao.impl.OrderDaoImpl;
import shoppingCart.model.dao.impl.OrderItemDaoImpl;
import shoppingCart.model.service.OrderService;

public class OrderServiceImpl implements OrderService {

	private DataSource ds;
	private OrderItemDao oidao;
	private OrderDao odao;
	private MemberDAO mdao;

	public OrderServiceImpl() {
		try {
			Context ctx = new InitialContext();
			ds 	  = (DataSource) ctx.lookup(GlobalService.JNDI_NAME_MySQL);
			oidao = new OrderItemDaoImpl();
			odao  = new OrderDaoImpl();
			mdao  = new MemberDAO();
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}

	@Override
	// 這是一個交易
	public void processOrder(OrderBean_HO73 ob) {
		Connection con = null;
		try {
			con = ds.getConnection();
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new RuntimeException(ex.getMessage());
		}
		try {
			// 交易開始
			con.setAutoCommit(false);
			
			// 檢查未付款餘額是否超過限額，並更新未付款餘額
			mdao.setConnection(con);
			mdao.updateUnpaidOrderAmount(ob);
			
			// 檢查所有訂單明細所訂購之商品的庫存數量是否足夠
			checkStock(ob, con);
			
			// 儲存訂單
			odao.setConnection(con);
			odao.insertOrder(ob);
			con.commit();
		} catch (Exception e) {
			try {
				con.rollback();
				System.out.println("發生異常，交易回滾.....,原因: " + e.getMessage());
			} catch (SQLException e1) {
				throw new RuntimeException(e1);
			}
			throw new RuntimeException(e);
		} finally {
			try {
				con.setAutoCommit(true);
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e.getMessage());
			}
		}

	}

	public void checkStock(OrderBean_HO73 ob, Connection con) {
		Set<OrderItemBean_HO73> items = ob.getItems();
		oidao.setConnection(con);
		for (OrderItemBean_HO73 oib : items) {
			oidao.updateProductStock(oib);
		}
	}

	/**
	 * ** 計算一張訂單的總金額。
	 * 由OrderBean的getItems()取出Set<OrderItemBean>物件，經由迴圈計算每項商品的小計金額，
	 * 加總這些金額後得到總金額。
	 */
//	@Override
//	// 10-23 21:36
//	public double findTotalOrderAmount(OrderBean ob) {
//		double total = 0;
////		Set<OrderItemBean> items = ob.getItems();
////		for (OrderItemBean oib : items) {
////			double subtotal = oib.getQuantity() * oib.getUnitPrice() * oib.getDiscount();
////			total += subtotal;
////		}
//		if (5 > 3)
//		throw new RuntimeException("Unused function: findTotalOrderAmount()");
//		return total;
//	}

	public OrderDao getOdao() {
		return odao;
	}

	public void setOdao(OrderDao odao) {
		this.odao = odao;
	}

	@Override
	public OrderBean_HO73 getOrder(int orderNo) {
		return odao.getOrder(orderNo);
	}

}
