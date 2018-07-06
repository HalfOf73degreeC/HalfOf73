package supplyShoppingCart.model.query;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import supplyShoppingCart.model.SupplyOrderBean_HO73;

@Repository
public class OrderQueryDaoImpl_Hibernate implements OrderQueryDao {
	
	private String memberId = null;
	
	@Autowired
	SessionFactory factory;
	
	public OrderQueryDaoImpl_Hibernate() {
	}

	@Override
	public SupplyOrderBean_HO73 getOrder(int orderNo)  {
		Session session = getSession();
		SupplyOrderBean_HO73 ob = session.get(SupplyOrderBean_HO73.class, orderNo);
		return ob;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SupplyOrderBean_HO73> getAllOrders()  {
		List<SupplyOrderBean_HO73> list = new ArrayList<SupplyOrderBean_HO73>();
		Session session = getSession();
		String hql = "FROM OrderBean";
		list = (List<SupplyOrderBean_HO73>)session.createQuery(hql).getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<SupplyOrderBean_HO73> getMemberOrders() {
		List<SupplyOrderBean_HO73> list = new ArrayList<SupplyOrderBean_HO73>();
		Session session = getSession();
		String hql = "FROM OrderBean ob ORDER BY ob.orderDate DESC "
				   + " WHERE ob.memberId = :id"; 
	    list = (List<SupplyOrderBean_HO73>) session.createQuery(hql)
	    		                        .setParameter("id", memberId);
		return list;
	}
	@Override
	public String getMemberId() {
		return memberId;
	}

	@Override
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public Session getSession() {
		return factory.getCurrentSession();
	}

}
