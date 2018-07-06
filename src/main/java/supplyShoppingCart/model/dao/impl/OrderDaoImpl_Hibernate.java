package supplyShoppingCart.model.dao.impl;

import java.sql.Connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import supplyShoppingCart.model.SupplyOrderBean_HO73;
import supplyShoppingCart.model.dao.OrderDao;

// 本類別
//   1.新增一筆訂單到orders表格
//   2.查詢orders表格內的單筆訂單
//   3.查詢orders表格內的所有訂單
@Repository
public class OrderDaoImpl_Hibernate implements OrderDao {
	
	@Autowired
	SessionFactory factory;
	
	private String memberId = null;
	int orderNo = 0;


	public OrderDaoImpl_Hibernate() {
	}

	@Override
	public void insertOrder(SupplyOrderBean_HO73 ob) {
		Session session = getSession();
		session.save(ob);
	}

	public SupplyOrderBean_HO73 getOrder(int orderNo) {
		Session session = getSession();
		SupplyOrderBean_HO73 ob = session.get(SupplyOrderBean_HO73.class, orderNo);
		return ob;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Session getSession() {
		return factory.getCurrentSession();
	}
	
	public void setConnection(Connection con) {
	
	}
	
}