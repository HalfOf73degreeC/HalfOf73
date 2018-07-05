package supplyShoppingCart.model.query;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import supplyShoppingCart.model.OrderBean;

@Repository
public class OrderQueryDaoImpl_Hibernate implements OrderQueryDao {
	
	private String memberId = null;
	
	@Autowired
	SessionFactory factory;
	
	public OrderQueryDaoImpl_Hibernate() {
	}

	@Override
	public OrderBean getOrder(int orderNo)  {
		Session session = getSession();
		OrderBean ob = session.get(OrderBean.class, orderNo);
		return ob;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<OrderBean> getAllOrders()  {
		List<OrderBean> list = new ArrayList<OrderBean>();
		Session session = getSession();
		String hql = "FROM OrderBean";
		list = (List<OrderBean>)session.createQuery(hql).getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<OrderBean> getMemberOrders() {
		List<OrderBean> list = new ArrayList<OrderBean>();
		Session session = getSession();
		String hql = "FROM OrderBean ob ORDER BY ob.orderDate DESC "
				   + " WHERE ob.memberId = :id"; 
	    list = (List<OrderBean>) session.createQuery(hql)
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
