package model.repository.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.DeliveryBean_HO73;
import model.repository.DeliveryDao;

@Transactional
@Repository("deliveryDao")
@Scope("prototype")
public class DeliveryDaoImpl implements Serializable, DeliveryDao {
	private static final long serialVersionUID = 1L;
	@Autowired
	SessionFactory factory;

	public DeliveryDaoImpl() {
//		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public int save(DeliveryBean_HO73 db) {
		int n = 0;
		Session session = getSession();
		session.save(db);
		n++;
		return n;

	}

	@Override
	public DeliveryBean_HO73 getOneDelivery(int deliveryUid) {
		DeliveryBean_HO73 db = null;
		Session session = getSession();
		db = session.get(DeliveryBean_HO73.class, deliveryUid);
		return db;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DeliveryBean_HO73> getAllDelivery() {
		
		List<DeliveryBean_HO73> allDelivery = new ArrayList<>();
		String hql = "FROM DeliveryBean_HO73";
		Session session = getSession();
		allDelivery = (List<DeliveryBean_HO73>) session.createQuery(hql)
												 .getResultList();
		if(allDelivery.size() > 0) {
		    return allDelivery;
		} else {
		    return null;
		}
	}

	@Override
	public int update(DeliveryBean_HO73 db) {
		int n = 0;
		Session session = getSession();
		session.merge(db);
		n++;
		return n;
	}

	@Override
	public int delete(int deliveryUid) {
		int n = 0;
		Session session = getSession();
		DeliveryBean_HO73 db = new DeliveryBean_HO73();
		db.setDeliveryUid(deliveryUid);
		session.delete(db);
		return n;
	}
	private Session getSession() {
		return factory.getCurrentSession();
	}

}
