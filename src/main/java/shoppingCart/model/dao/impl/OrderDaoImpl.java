package shoppingCart.model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import _00.utils.GlobalService;
import shoppingCart.model.OrderBean_HO73;
import shoppingCart.model.OrderItemBean_HO73;
import shoppingCart.model.dao.OrderDao;

// 本類別
//   1.新增一筆訂單到orders表格
//   2.查詢orders表格內的單筆訂單
//   3.查詢orders表格內的所有訂單
public class OrderDaoImpl implements OrderDao {
	
	private String memAccount = null;
	private Connection con;
	int orderNo = 0;


	public OrderDaoImpl() {
	}

	@Override
	public void insertOrder(OrderBean_HO73 ob) {
		String sqlOrder = "Insert Into orders_ho73 "
				+ " (memAccount, totalAmount, shippingAddress, "
				+ " BNO, InvoiceTitle, orderDate, shippingName, shippingPhone, paymentUid, paymentName, paymentATMBankId, paymentATMAccount) "
				+ " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";

		String sqlItem = "Insert Into OrderItems_ho73 (orderNo, goodsUid,"
				+ " description, quantity, unitPrice, discount) "
				+ " values(?, ?, ?, ?, ?, ?) ";

		ResultSet generatedKeys = null;

		try (
			PreparedStatement ps = con.prepareStatement(sqlOrder, 
				Statement.RETURN_GENERATED_KEYS);
		) {
			ps.setString(1, ob.getMemAccount());
			ps.setDouble(2, ob.getTotalAmount());
			ps.setString(3, ob.getShippingAddress());
			ps.setString(4, ob.getBno());
			ps.setString(5, ob.getInvoiceTitle());
			Timestamp ts = new Timestamp(ob.getOrderDate().getTime());
			ps.setTimestamp(6, ts);
			ps.setString(7, ob.getShippingName());
			ps.setString(8, ob.getShippingPhone());
			ps.setInt(9, ob.getPaymentUid());
			ps.setString(10, ob.getPaymentName());
			ps.setString(11, ob.getPaymentATMBankId());
			ps.setString(12, ob.getPaymentATMAccount());
			ps.executeUpdate();
			int id = 0;
			// 取回剛才新增之訂單的主鍵值
			generatedKeys = ps.getGeneratedKeys();
			if (generatedKeys.next()) {
				id = generatedKeys.getInt(1);
			} else {
				throw new RuntimeException("OrderDaoImpl類別#insertOrder()無法取得新增之orders表格的主鍵");
				
			}

			Set<OrderItemBean_HO73> items = ob.getItems();
			try (PreparedStatement ps2 = con.prepareStatement(sqlItem);) {
				for (OrderItemBean_HO73 oib : items) {
					// 下列四個敘述為交易測試而編寫
					// n++;
					// if (n > 1) {
					// 	  System.out.println("發生例外 n>2");
					// 	  throw new SQLException("JDBC交易測試用");
					// }
					ps2.setInt(1, id);
					ps2.setInt(2, oib.getGoodsUid());
					ps2.setString(3, oib.getDescription());
					ps2.setDouble(4, oib.getQuantity());
					ps2.setDouble(5, oib.getUnitPrice());
					ps2.setDouble(6, oib.getDiscount());
					ps2.executeUpdate();
					ps2.clearParameters();
				}
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("OrderDaoImpl類別#insertOrder()發生SQL例外: " + ex.getMessage());
		}
	}

	public OrderBean_HO73 getOrder(int orderNo) {
		OrderBean_HO73 ob = null;
		DataSource ds = null;
		Set<OrderItemBean_HO73> set = null;
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup(GlobalService.JNDI_NAME_MySQL);
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new RuntimeException("OrderDaoImpl類別#getOrder()-1發生例外: " + ex.getMessage());
		}

		String sql = "SELECT * FROM Orders_ho73 WHERE orderno = ? ";
		String sql1 = "SELECT * FROM OrderItems_h073"
				+ ""
				+ "ms WHERE orderno = ? ";
		try (
			Connection con = ds.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			PreparedStatement ps1 = con.prepareStatement(sql1);
		) {
			ps.setInt(1, orderNo);
			try (
				ResultSet rs = ps.executeQuery();
			) {
				if (rs.next()) {
					Integer ono = rs.getInt("orderNo");
					String cancel = rs.getString("cancelTag");
					String bno = rs.getString("bno");
					String title = rs.getString("invoiceTitle");
					String memAccount = rs.getString("memAccount");
					Timestamp orderDate = rs.getTimestamp("orderDate");
					String shipAddr = rs.getString("shippingAddress");
					Date shipDate = rs.getDate("shippingDate");
					double totalAmount = rs.getDouble("totalAmount");
					String shipName = rs.getString("shippingName");
					String shipPhone = rs.getString("shippingPhone");
					ob = new OrderBean_HO73(ono, memAccount, totalAmount, shipAddr, shipName, shipPhone, bno, title, orderDate, shipDate, cancel , null);
				}
			}
			ps1.setInt(1, orderNo);
			try (
				ResultSet rs = ps1.executeQuery();
			) {
				set = new HashSet<>();
				while (rs.next()) {
					int seqNo = rs.getInt("seqNo");
					int orderNo2 = rs.getInt("orderNo");
					int goodsUid = rs.getInt("goodsUid");
					String description = rs.getString("description");
					Integer quantity = rs.getInt("quantity");
					Double uPrice = rs.getDouble("unitPrice");
					Double discount = rs.getDouble("discount");
					OrderItemBean_HO73 oi = new OrderItemBean_HO73(seqNo, orderNo2, goodsUid, 
							description, quantity, uPrice, discount);
					set.add(oi);
				}
				ob.setItems(set);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new RuntimeException("OrderDaoImpl類別#getOrder()-2發生例外: " + ex.getMessage());
		}
		return ob;
	}

	public String getMemAccount() {
		return memAccount;
	}

	public void setMemAccount(String memAccount) {
		this.memAccount = memAccount;
	}

	public void setConnection(Connection con) {
		this.con = con;
	}
	
}