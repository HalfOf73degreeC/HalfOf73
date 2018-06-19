package shoppingCart.model.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import shoppingCart.model.OrderItemBean_HO73;
import shoppingCart.model.dao.OrderItemDao;
import shoppingCart.model.ude.ProductStockException;
/*
 * 一張合格的訂單必須經過下列檢查
 * 	1.	檢查訂購之商品的數量是否足夠。
 *      此功能寫在本類別的updateProductStock()方法內，參考該方法的說明。
 */
public class OrderItemDaoImpl implements OrderItemDao {
	Connection conn;

	public OrderItemDaoImpl() {
	}
	/*
	 * 計算客戶欲購買之某項商品(以OrderItemBean物件oib來表示)的小計金額(subtotal)， 
	 * 計算公式為: 商品的數量 * 商品的單價  * 商品的折扣
	 */
	@Override
	public double findItemAmount(OrderItemBean_HO73 oib) {
		double subtotal = oib.getQuantity() * oib.getUnitPrice() * oib.getDiscount();
		return subtotal;
	}
	
//	@Override
//	public double updateUnpaidOrderAmount(OrderItemBean oib, String memberId) {
	//.....
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
	public int updateProductStock(OrderItemBean_HO73 oib) {
		int n = 0;
		int stock = 0;
		String sql0 = "SELECT goodsStock FROM goodsbean_ho73 WHERE goodsUid = ?";
		String sql1 = "UPDATE goodsbean_ho73 SET goodsStock = goodsStock - ? WHERE goodsUid = ?";
		try (PreparedStatement ps = conn.prepareStatement(sql0);) {
			ps.setInt(1, oib.getGoodsUid());
			try (ResultSet rs = ps.executeQuery();) {
				if (rs.next()) {
					stock = rs.getInt(1);
					if (stock < oib.getQuantity()) {
						throw new ProductStockException("庫存數量不足: GoodsName: " 
								+ oib.getGoodsUid() + ", 在庫量: " + stock+ ", 訂購量: " + oib.getQuantity());
					} else {
						;
					}
					try (PreparedStatement ps1 = conn.prepareStatement(sql1);) {
						ps1.setInt(1, oib.getQuantity());
						ps1.setInt(2, oib.getGoodsUid());
						n = ps1.executeUpdate();
					}
				}
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("OrderItemDaoImpl類別#updateProductStock()發生SQL例外: " + ex.getMessage());
		}
		return n;
	}
	@Override
	public void setConnection(Connection conn) {
		this.conn = conn;
		
	}
	
}
