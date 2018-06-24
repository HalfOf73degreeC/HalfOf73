package shoppingCart.model.query;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

import _00.utils.GlobalService;
import shoppingCart.model.OrderBean_HO73;
import shoppingCart.model.OrderItemBean_HO73;

@Repository
public class OrderQueryDaoImpl implements OrderQueryDao {
	DataSource ds = null;
	private String memAccount = null;
	
	public OrderQueryDaoImpl() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup(GlobalService.JNDI_NAME_MySQL);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}

	@Override
	public OrderBean_HO73 getOrder(int orderNo)  {
		OrderBean_HO73 ob = null;
		Set<OrderItemBean_HO73> set = null;

		String sql  = "SELECT * FROM Orders_ho73 	WHERE orderNo = ? ";
		String sql1 = "SELECT * FROM OrderItems_ho73 WHERE orderNo = ? ";
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
					String shipName = rs.getString("shippingName");
					String shipPhone = rs.getString("shipping");
					Date shipDate = rs.getDate("shippingDate");
					double totalAmount = rs.getDouble("totalAmount");
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
					Integer amount = rs.getInt("amount");
					Double uPrice = rs.getDouble("unitPrice");
					Double discount = rs.getDouble("discount");
					OrderItemBean_HO73 oi = new OrderItemBean_HO73(seqNo, orderNo2, goodsUid, 
							description, amount, uPrice, discount);
					set.add(oi);
				}
				ob.setItems(set);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ob;
	}
	
	@Override
	public List<OrderBean_HO73> getAllOrders()  {
		List<OrderBean_HO73> list = new ArrayList<OrderBean_HO73>();
		String sql = "SELECT OrderNo FROM Orders_ho73";
		try (
			Connection con = ds.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
		) {
			while (rs.next()) {
				Integer no = rs.getInt(1);
				list.add(getOrder(no));
			}
		} catch(SQLException ex){
			throw new RuntimeException(ex);
		}
		return list;
	}
	
	@Override
	public List<OrderBean_HO73> getMemberOrders() {
		List<OrderBean_HO73> list = new ArrayList<OrderBean_HO73>();
		String sql = "SELECT OrderNo FROM Orders_ho73 Order by orderDate desc where userId = ?";
		try (
				Connection con = ds.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
			) {
				ps.setString(1, memAccount);
				try (
					ResultSet rs = ps.executeQuery();
				) {
					while (rs.next()) {
						Integer no = rs.getInt(1);
						list.add(getOrder(no));
					}
				}
		} catch(SQLException ex){
			throw new RuntimeException(ex);
		}
		return list;
	}

	public String getMemAccount() {
		return memAccount;
	}

	public void setMemAccount(String memAccount) {
		this.memAccount = memAccount;
	}
	

}
